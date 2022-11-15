library(tidyverse)

cjdb <- read.csv("../data/CJDB90_20.csv")

cjdb_combined <- cjdb %>%
  mutate(CRIME_TOTALS = SRS_TOTAL + NIB_TOTAL,
         ARREST_TOTALS = JRR_TOTAL + JRN_TOTAL + ARR_TOTAL + ARN_TOTAL,
         ARREST_RATIO = ARREST_TOTALS/CRIME_TOTALS,
         ASSAULT_TOTALS = SRS_AG_ASSLT + NIB_ASSAULT,
         ARSON_TOTALS = SRS_ARSON + NIB_ARSON + NIB_DESTPROP,
         BURGLARY_TOTALS = SRS_BURGLARY + NIB_BURGLARY,
         MURDER_TOTALS = SRS_MURDER + NIB_MURDER + NIB_MNSLGHTR,
         THEFT_TOTALS = SRS_MVT + SRS_THEFT + NIB_THEFT,
         RAPE_TOTALS = SRS_RAPE + NIB_FSEX,
         ROBBERY_TOTALS = SRS_ROBBERY + NIB_ROBBERY + NIB_EXTORTION) %>%
  rename("ANIMALCLR_TOTALS" = "NIB_ANIMALCR",
         "DRUGVIOL_TOTALS" = "NIB_DRUGVIOL",
         "FORGERY_TOTALS" = "NIB_FORGERY",
         "GAMBVIOL_TOTALS" = "NIB_GAMBVIOL",
         "HTRFFCKING_TOTALS" = "NIB_HTRFFCKNG",
         "KIDNAP_TOTALS" = "NIB_KIDNAP",
         "PROST_TOTALS" = "NIB_PROST",
         "PORN_TOTALS" = "NIB_PORN",
         "VIOLNCO_TOTALS" = "NIB_VIOLNCO",
         "WEAPVIOL_TOTALS" = "NIB_WEAPVIOL") %>%
  select(year, county, matches("TOTALS"), ARREST_RATIO)

cjdb_combined_table <- cjdb_combined %>%
  group_by(year, county) %>%
  summarise_all(sum) %>%
  mutate(ARREST_RATIO = ARREST_TOTALS/CRIME_TOTALS)
