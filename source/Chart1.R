# Did the crime get worse or better during the years we suffered from COVID-19?
library("tidyverse")
library(plotly)
# spd has until 2022
#spd <- read.csv("../data/SPD_Crime_Data_2008-Present.csv")
#View(spd)
spd_data <- read.csv("data/spd_dataset.csv")
#View(spd_data)

# srs is for 1999-2011
# srs <- read.csv("https://media.githubusercontent.com/media/info201b-au2022/project-cadej09/main/data/srs_94_19.csv")
# View(srs)
#
# # cdjdb 1990-2020
# cdjdb <- read.csv("https://media.githubusercontent.com/media/info201b-au2022/project-cadej09/main/data/CJDB90_20.csv")
# View(cdjdb)
#
# # nibrs 2012-2020
# nibrs <- read.csv("https://media.githubusercontent.com/media/info201b-au2022/project-cadej09/main/data/nibrs_12_20.csv")
# View(nibrs)

# Data Wrangling time
# Ignore old ones, I'm working with the new ones now
#old_spd <- spd %>%
  #drop_na() %>%
  #select(Offense.Start.DateTime) %>%
  #mutate(StartTime = substr(Offense.Start.DateTime, 1, 10)) %>%
  #mutate(Frequency = frequency(StartTime))
#return(spd)

#old_pd <- spd %>%
  #drop_na() %>%
  #ungroup() %>%
  #select(StartTime) %>%
  #group_by(StartTime) %>%
  #mutate(Frequency = table(StartTime))

# Working with new ideas
# spd_dataset <- spd_data %>%
#   select(Report.DateTime,Date) %>%
#   drop_na() %>%
#   mutate(Date = substr(Report.DateTime, 1, 10)) %>%
#   mutate(Frequency = frequency(Date)) %>%
#   mutate(Date = as.Date(Date, format="%m/%d/%Y" )) %>%
#   filter(Date >= "2017-12-31") %>%
#   select(Report.DateTime,Date) %>%
#   return(spd_dataset)

#View(spd_dataset)
#write.csv(spd_dataset,"~/documents/info201/spd_dataset.csv")

new_spd <- spd_data %>%
  drop_na() %>%
  select(Report.DateTime) %>%
  mutate(Date = substr(Report.DateTime, 1, 10)) %>%
  mutate(Frequency = frequency(Date)) 

new_pd <- new_spd %>%
  drop_na() %>%
  select(Date) %>%
  group_by(Date) %>%
  mutate(Frequency = table(Date)) %>%
  mutate(Date = as.Date(Date, format="%m/%d/%Y" )) %>%
  filter(Date >= "2017-12-31")
new_pd <- unique.data.frame(new_pd)


# Plotting Data
newplot <- ggplot(new_pd, aes(x = Date,y = Frequency)) +
  geom_line()

# working on p3
start_date <- new_spd %>%
  drop_na() %>%
  select(Date) %>%
  group_by(Date) %>%
  mutate(Date = as.Date(Date, format="%m/%d/%Y"))
start_date <- unique.data.frame(start_date)
start_date <- start_date %>%
  pull(Date)

testing <- new_spd %>%
  drop_na() %>%
  select(Date)%>%
  group_by(Date)
testing <- table(testing)
testing <- as.data.frame(testing)

get_date_start <- function(start_date) {
  start <- testing %>%
    filter(Date >= start_date) %>%
    mutate(Date = as.Date(Date, format="%m/%d/%Y" ))
  start <- unique.data.frame(start)
  # start <- start %>%
  #   summarise(Date = Date, Frequency = Frequency, .groups = 'drop')
  return(start)
}

plot_date_start <- function(start_date) {
  plot_start <- get_date_start(start_date) %>%
    ggplot(aes(x=Date, y=Freq)) +
    geom_line() +
    ylab("Number of Crimes a Day") +
    xlab("Date") +
    labs(
      title = paste("Crime in Washington from",start_date,"to 2022-10-25"))
  return(plot_start)
}

interactive_plot <- function(start_date) {
plottt <- plot_ly(get_date_start(start_date), x = ~Date, y = ~Frequency, type = 'scatter', mode = 'lines') %>%
  layout(title=paste("Crime in Washington from",start_date,"to 2022-10-25"), yaxis = list(title= 'Number of Crimes a Day'))
return(plottt)
}
