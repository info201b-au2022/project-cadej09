library(shiny)
library("markdown")
library(tidyverse)
library(plotly)


Crimecategories <- read.csv("data/nibrs_12_20.csv")
options(max.print = 900000000) 

crimes_in_seattle <- Crimecategories [c(936), ]

crimes_in_seattle1 <- crimes_in_seattle[,-1:-8]

crimes_in_seattle2 <- crimes_in_seattle1 [,-c(9,10,19,20)]

categories <- c("MURDER", "MANSLAUGHTER", "FORCIBLE_SEX", "ASSULT","NON_FORCIBLE_SEX","KIDNAPPING_ABDUCTION", "HUMAN_TRAFFICKING", "VIOL_OF_NO_CONTACT","ARSON", "BIBERY", "BURGLARY", "COUNTERFEITING_FORGERY", "DESTRUCTION_OF_PROPERTY", "EXTORTION_BLACKMAIL", "ROBBERY", "THEFT","DRUG_VIOLATIONS", "GAMBLING_VIOLATION", "PORNOGRAPHY", "PROTITUTION", "WEAPON_LAW_VIOLATION", "ANIMAL_CRUELTY")
incidence <- c(52, 16, 520, 11632, 4, 147, 14, 1353, 209, 1, 10548, 374, 6641, 106, 1489, 40163, 1021, 1, 40, 29, 614, 28)  

crimes_2020 <- data.frame(
  categories = c("MURDER", "MANSLAUGHTER", "FORCIBLE_SEX", "ASSULT","NON_FORCIBLE_SEX","KIDNAPPING_ABDUCTION", "HUMAN_TRAFFICKING", "VIOL_OF_NO_CONTACT","ARSON", "BIBERY", "BURGLARY", "COUNTERFEITING_FORGERY", "DESTRUCTION_OF_PROPERTY", "EXTORTION_BLACKMAIL", "ROBBERY", "THEFT","DRUG_VIOLATIONS", "GAMBLING_VIOLATION", "PORNOGRAPHY", "PROTITUTION", "WEAPON_LAW_VIOLATION", "ANIMAL_CRUELTY"),
  incidence = c(52, 16, 520, 11632, 4, 147, 14, 1353, 209, 1, 10548, 374, 6641, 106, 1489, 40163, 1021, 1, 40, 29, 614, 28))




type_crime <- ggplot(crimes_2020) +
  geom_col(mapping = aes(x = categories, y = incidence, fill = categories))


#source("data/nibrs_12_20.csv")
source("source/Chart2.R")

tab_panel_Chart2 <- tabPanel(
  "Categories of crime",
  fluidPage(
    titlePanel("Different types of Crime in Washington"),
    fluidRow(
      column(11,
             includeMarkdown("tabs/Chart2_sum.md"))
  )),
  sidebarLayout(
    sidebarPanel(
      selectInput("categories", "Categories:",
                  choices = select(crimes_2020,
                                   categories),
    )),
    mainPanel(
      plotOutput("type_crime"),
    )
  ))

