library(shiny)
library("markdown")
Crimecategories <- read.csv("data/nibrs_12_20.csv")


tab_panel_Chart2 <- tabPanel(
  "Categories of crime",
  fluidpage(
    titlePanel("Different categories of crime in Washington"),
    fluidRow(
      column(22,
             includeMarkdown("tabs/Chart2_sum.md"))
    )),
  sidebarLayout(
    sidebarPanel = 
      sliderInput("categories",
                  "Number of observations:",
                  min = 0,
                  max = 2357
      ),
    mainPanel(
      plotOutput("type_crime")
    )
  )
    )

