library(shiny)
library("markdown")
source("source/Chart1.R")
tab_panel_Chart1 <- tabPanel(
  "Crime during COVID",
  fluidPage(
    titlePanel("Plot looking at Crime data before and during COVID"),
    fluidRow(
      column(3, wellPanel(
        selectInput("Date", "Beginning Date", start_date)
      ))
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
)
