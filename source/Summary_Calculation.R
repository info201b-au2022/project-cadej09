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

cjdb_year_combined <- cjdb_combined %>%
  filter(county == "STATE")

cjdb_county_combined <- cjdb_combined %>%
  filter(county != "STATE PATROL", county != "STATE") %>%
  group_by(county) %>%
  summarise(across(c(CRIME_TOTALS, ARREST_TOTALS), sum)) %>%
  mutate(ARREST_RATIO = ARREST_TOTALS/CRIME_TOTALS)

cjdb_types_combined <- subset(cjdb_year_combined, 
                              select = -c(year, CRIME_TOTALS, ARREST_TOTALS, ARREST_RATIO))
cjdb_types_combined<- cjdb_types_combined %>% 
  group_by(county) %>%
  summarize_all(sum)
colnames(cjdb_types_combined) = gsub("_TOTALS", "", colnames(cjdb_types_combined))
cjdb_types_combined$MOST_COMMON <- colnames(cjdb_types_combined)[apply(cjdb_types_combined,1,which.max)]
cjdb_types_combined$LEAST_COMMON <- colnames(cjdb_types_combined)[apply(cjdb_types_combined,1,which.min)]


# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:
summary_info <- list()

summary_info$year_most_crime <- cjdb_year_combined %>%
  filter(CRIME_TOTALS == max(CRIME_TOTALS, na.rm = T)) %>%
  select(year)
summary_info$crime_2020<- cjdb_year_combined %>%
  filter(CRIME_TOTALS == max(CRIME_TOTALS, na.rm = T)) %>%
  filter(year == 2020) %>%
  select(CRIME_TOTALS)

summary_info$year_least_crime <- cjdb_year_combined %>%
  filter(CRIME_TOTALS == min(CRIME_TOTALS, na.rm = T)) %>%
  select(year)
summary_info$crime_2011 <- cjdb_year_combined %>%
  filter(CRIME_TOTALS == min(CRIME_TOTALS, na.rm = T)) %>%
  filter(year == 2011) %>%
  select(CRIME_TOTALS)

summary_info$county_most_crime <- cjdb_county_combined %>%
  filter(CRIME_TOTALS == max(CRIME_TOTALS, na.rm = T)) %>%
  select(county)
summary_info$crime_king <- cjdb_county_combined %>%
  filter(CRIME_TOTALS == max(CRIME_TOTALS, na.rm = T)) %>%
  filter(county == "KING") %>%
  select(CRIME_TOTALS)

summary_info$county_least_crime <- cjdb_county_combined %>%
  filter(CRIME_TOTALS == min(CRIME_TOTALS, na.rm = T)) %>% 
  select(county)
summary_info$crime_wahkiakum <- cjdb_county_combined %>%
  filter(CRIME_TOTALS == min(CRIME_TOTALS, na.rm = T)) %>%
  filter(county == "WAHKIAKUM") %>%
  select(CRIME_TOTALS)

summary_info$year_most_arrest <- cjdb_year_combined %>%
  filter(ARREST_TOTALS == max(ARREST_TOTALS, na.rm = T)) %>%
  select(year)
summary_info$arrest_2007 <- cjdb_year_combined %>%
  filter(ARREST_TOTALS == max(ARREST_TOTALS, na.rm = T)) %>%
  filter(year == 2007) %>%
  select(ARREST_TOTALS)

summary_info$year_least_arrest <- cjdb_year_combined %>%
  filter(ARREST_TOTALS == min(ARREST_TOTALS, na.rm = T)) %>%
  select(year)
summary_info$arrest_2020 <- cjdb_year_combined %>%
  filter(ARREST_TOTALS == min(ARREST_TOTALS, na.rm = T)) %>%
  filter(year == 2020) %>%
  select(ARREST_TOTALS)

summary_info$county_most_arrest <- cjdb_county_combined %>%
  filter(ARREST_TOTALS == max(ARREST_TOTALS, na.rm = T)) %>%
  select(county)
summary_info$arrest_king <- cjdb_county_combined %>%
  filter(ARREST_TOTALS == max(ARREST_TOTALS, na.rm = T)) %>%
  filter(county == "KING") %>%
  select(ARREST_TOTALS)

summary_info$county_least_arrest <- cjdb_county_combined %>%
  filter(ARREST_TOTALS == min(ARREST_TOTALS, na.rm = T)) %>%
  select(county)
summary_info$arrest_wahkiakum <- cjdb_county_combined %>%
  filter(ARREST_TOTALS == min(ARREST_TOTALS, na.rm = T)) %>%
  filter(county == "WAHKIAKUM") %>%
  select(ARREST_TOTALS)

summary_info$most_common_crime_wa <- cjdb_types_combined %>%
  select(MOST_COMMON)
summary_info$least_common_crime_wa <- cjdb_types_combined %>%
  select(LEAST_COMMON)