library(tidyverse)
library(ggplot2)
mytheme = theme_minimal() +
  theme(aspect.ratio =1) +
  theme(axis.text.x = element_text(face = "bold"),
        axis.text.y = element_text(face = "bold"),
        axis.line = element_line(linewidth=unit(0.5,"pt")),
        panel.grid.major.y  = element_line(linewidth=unit(0.5,"pt"),colour = 'gray90',linetype = 'solid'),
        panel.grid.major.x  = element_line(linewidth=unit(0.5,"pt"),colour = 'gray90'),
        panel.grid.minor.x = element_line(linewidth=unit(0.5,"pt"),colour = 'gray90',linetype = 'dashed'),
        legend.position = "top",legend.direction = 'horizontal'
  )

convert96 = function(mat){
  stopifnot("input matrix is not in 96 format (8 rows, 12 columns)" = all(dim(mat)==c(8,12)))
  row_headers <- LETTERS[1:8]
  col_headers <- sprintf("%02d", 1:12)
  dimnames(mat) <- list(row_headers, col_headers)

  df <- mat %>%
    rownames_to_column(var = "row") %>%
    tidyr::pivot_longer(
      cols = -row,
      names_to = "column",
      values_to = "value"
    ) %>%
    mutate(
      coord96 = paste0(row, column)
    )
  return(df)
}

### PLATE DEFINITION
din.pdef = read.delim("/home/benjamin/Desktop/GitHub/HT-qDotblot/DIN-96.csv",header = F,sep = ',') %>%
  convert96 %>%  dplyr::rename(name=value)

### BCA ASSAY FOR NORMALIZATION
din.bca = read.delim( "/home/benjamin/Desktop/GitHub/HT-qDotblot/DIN-BCA.tsv",row.names = 1,header = T) %>%
  convert96 %>%  dplyr::rename(bca=value)

### DOTBLOT MEASUREMENTS
din.res = readr::read_delim("/home/benjamin/Desktop/GitHub/HT-qDotblot/measurements/DIN-800.csv")

### READ DATA TO A TABLE
din.data.0 = left_join(din.pdef,din.res,by=c("coord96"='well')) %>%
  left_join(din.bca)

din.data.1 = din.data.0 %>%
  mutate(median.norm = ifelse(bca<1, median/100, median /bca )) %>%
  group_by(name) %>%
  mutate( avg_med = mean(median), sd_med = sd(median),
          avg_med.norm = mean(median.norm), sd_med.norm = sd(median.norm),
          replicate_num = row_number() %>% as.character())


### PLOT AVERAGE INTENSITY PER GENE
# Using Median intensity
din_800 = ggplot(din.data.1,aes(x=median,y=reorder(name,avg_med))) +
  geom_pointrange(data=din.data.1,
                  aes(x=avg_med, y=reorder(name,avg_med),
                      xmin=avg_med-sd_med,
                      xmax=avg_med+sd_med),
                  color="gray40",linewidth=0.5,size=0.5,lineend="round") +
  geom_point(size=1.5, shape=20, aes(color=replicate_num)) +
  scale_color_brewer(palette = 6, type="qual") +
  ylab("Gene") +
  scale_x_continuous(expand = c(0,0),limits=c(0,2500),name="Median intensity at 800nm") +
  mytheme

# Using Normalized median intensity (e.g. divided by BCA value i.e. relative sample loading)
din_800.norm = ggplot(din.data.1,aes(x=median.norm,y=reorder(name,avg_med.norm))) +
  geom_pointrange(data=din.data.1,
                  aes(x=avg_med.norm, y=reorder(name,avg_med.norm),
                      xmin=avg_med.norm-sd_med.norm,
                      xmax=avg_med.norm+sd_med.norm),
                  color="gray40",linewidth=0.5,size=0.5,lineend="round") +
  geom_point(size=1.5, shape=20, aes(color=replicate_num)) +
  scale_color_brewer(palette = 6, type="qual") +
  ylab("Gene") +
  scale_x_continuous(expand = c(0,0),limits=c(0,100),name="BCA-normalized Median intensity at 800nm") +
  labs(caption="normalization = Median intensity / % BCA") +
  mytheme

library(patchwork)
p_din =din_800 | din_800.norm
ggsave(p_din,filename = "DIN_plot.png",path="/home/benjamin/Desktop/GitHub/HT-qDotblot/plot",scale = 1.5,bg = 'white')
ggsave(p_din,filename = "DIN_plot.pdf",path="/home/benjamin/Desktop/GitHub/HT-qDotblot/plot",scale = 1.5,bg = 'white')
