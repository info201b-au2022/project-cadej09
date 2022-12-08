library(shiny)

tab_panel_summary <- tabPanel(
  "Summary",
  p("Simply presents some summary information for a data frame."),
  DT::dataTableOutput("table")
)