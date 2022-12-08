library(shiny)
library(markdown)

tab_panel_report <- tabPanel(
  "Report",
  h1("Project Report"),
  fluidPage(
    includeMarkdown("tabs/report.md"),
  )
)

