library(shiny)
library("markdown")


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
      sliderInput("range",
                  label = "Number of observations:",
                  value = 10, min = 1, max = 2357)
      ),
      mainPanel(
        h3(textOutput("caption")),
        plotOutput("type_crime")
      )
    )
  )





 