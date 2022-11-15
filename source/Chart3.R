##How has the crime rate in King County changed over the last ten years?
library(tidyverse)

crime_report <- read.csv("../data/nibrs_12_20.csv")
crime_report
new_crime_report <- crime_report %>% filter(COUNTY == 'KING' & LOCATION == 'COUNTY TOTAL')

king_plot <- plot(new_crime_report$INDEXYEAR, new_crime_report$RATE, type = "l", xlab = "Year",
     ylab = "Crime Rate", main = "Crime Rate in King County from 2012-2020")

