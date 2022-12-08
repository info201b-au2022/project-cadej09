##How has the crime rate in King County changed over the last ten years?
library(tidyverse)
cjdb <- read.csv("data/CJDB90_20.csv")

cjdb_years <- cjdb %>%
  mutate(CRIME_TOTALS = SRS_TOTAL + NIB_TOTAL) %>%
  select(year, county, CRIME_TOTALS) %>%
  filter(county == "STATE")

wa_years_plot <- ggplot(cjdb_years, aes(year, CRIME_TOTALS)) +
  geom_point() +
  geom_smooth() +
  labs(title = "CrimeTrend in WA", x = "Years", y = "# of Crimes")

lm(CRIME_TOTALS ~ year, data = cjdb_years)
