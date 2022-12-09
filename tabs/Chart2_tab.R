library(shiny)
library("markdown")


tab_panel_Chart2 <- tabPanel(
  "Categories of crime",
  fluidPage(
    titlePanel("Different types of Crime in Washington"),
    fluidRow(11,
             includeMarkdown("tabs/Chart2_sum.md"))
  ))




 