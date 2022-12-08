library(shiny)
library("markdown")
source("source/Chart1.R")

tab_panel_Chart1 <- tabPanel(
  "Crime during COVID",
  fluidPage(
    titlePanel("Plot looking at Crime data before and during COVID"),
    fluidRow(
      column(10,
             includeMarkdown("tabs/Chart1_sum.md"))
    )),
    sidebarLayout(
      sidebarPanel(
        sliderInput("dates",
                    "Dates:",
                    min = as.Date("2017-12-31","%Y-%m-%d"),
                    max = as.Date("2022-10-10","%Y-%m-%d"),
                    value=as.Date("2017-12-31"),
                    timeFormat="%Y-%m-%d")
      ),
    mainPanel(
      plotOutput("covidPlot")
    )
  )
)
