library(tidyverse)
library(ggmap)
library(maps)
library(mapdata)

cjdb <- read.csv("../data/CJDB90_20.csv")

cjdb_combined <- cjdb %>%
  mutate(CRIME_TOTALS = SRS_TOTAL + NIB_TOTAL) %>%
  select(year, county, CRIME_TOTALS) %>%
  filter(county != "STATE PATROL", county != "STATE") %>%
  group_by(county) %>%
  summarise(across(c(CRIME_TOTALS), sum))
states <- map_data("state")

wa_state <- subset(states, region == "washington")

counties <- map_data("county")

wa_county <- subset(counties, region == "washington")
wa_county$county <- toupper(wa_county$subregion)

wa_base <- ggplot(data = wa_state, mapping = aes(x = long, y = lat, group = group)) +
  coord_fixed(1.3) + geom_polygon(color = "black", fill = "gray")

ditch_the_axis <- theme(
  panel.border = element_blank(),
  panel.grid = element_blank(),
)

wa_base + ditch_the_axis +
  geom_polygon(data = wa_county, fill = NA, color = "white") +
  geom_polygon(color = "black", fill = NA)

enrol_map <- inner_join(wa_county, cjdb_combined, by = "county")

gg1 <- wa_base +
  geom_polygon(data = enrol_map, aes(fill = CRIME_TOTALS), color = "white") +
  geom_polygon(color = "black", fill = NA) +
  theme_bw() +
  ditch_the_axis +
  ggtitle("Total # of Crimes by Counties 1990-2020")

county_crime <- gg1 + scale_fill_gradient(low = "#000000", high = "#e74c3c", 
                                 breaks = c(0, 2500, 25000, 10000, 225000, 3700000), trans = "log10",  
                                 name = "# of Crimes") 
