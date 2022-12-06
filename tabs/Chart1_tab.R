library(shiny)
library("markdown")
source("source/Chart1.R")
tab_panel_Chart1 <- tabPanel(
  "Crime during COVID",
  fluidPage(
    titlePanel("Plot looking at Crime data before and during COVID"),
    fluidRow(
      column(3, wellPanel(
        selectInput("country1", "First Country", countries)
      ))
    ),
    mainPanel(
      plotOutput("covidPlot")
    ),
    
    fluidRow(
      column(
        4,
        wellPanel(
          selectInput("country2", "Second Country", countries)
        )
      )
    ),
    fluidRow(
      column(
        6,
        includeHTML("interactive_description.html")
      )
    )
  )
)
