library(shiny)
library("markdown")
source("source/Chart1.R")
tab_panel_Chart1 <- tabPanel(
  "Crime during COVID",
  fluidPage(
    titlePanel("Plot looking at Crime data before and during COVID"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("Date",
                    "Dates:",
                    min = as.Date("2018-01-01","%Y-%m-%d"),
                    max = as.Date("2022-10-10","%Y-%m-%d"),
                    value=as.Date("2018-01-01"),
                    timeFormat="%Y-%m-%d")
      ),
    mainPanel(
      plotOutput("covidPlot")
    ),
    # fluidRow(
    #   column(
    #     6,
    #     includeHTML("interactive_description.html")
    #   )
    # )
  )
))
