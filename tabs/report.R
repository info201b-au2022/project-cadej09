library(shiny)
library(markdown)

tab_panel_report <- tabPanel(
  "Project Report",
  fluidPage(
    includeMarkdown("tabs/report.md"),
  )
)

