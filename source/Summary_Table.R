library(tidyverse)

cjdb <- read.csv("data/CJDB90_20.csv")

cjdb_combined_table <- cjdb %>%
  mutate(CRIME_TOTALS = SRS_TOTAL + NIB_TOTAL,
         ARREST_TOTALS = JRR_TOTAL + JRN_TOTAL + ARR_TOTAL + ARN_TOTAL,
         ARREST_RATIO = ARREST_TOTALS/CRIME_TOTALS) %>%
  select(county, matches("TOTALS"), ARREST_RATIO) %>%
  filter(county != "STATE PATROL", county != "STATE") %>%
  group_by(county) %>%
  summarise_all(sum) %>%
  mutate(ARREST_RATIO = ARREST_TOTALS/CRIME_TOTALS)
