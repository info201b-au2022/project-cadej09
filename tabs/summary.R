library(shiny)

tab_panel_summary <- tabPanel(
  "Summary",
  h1("Sumary Takeaways from Our Project"),
  p("This is a table about number of crimes and arrests by counties in WA state."),
  DT::dataTableOutput("table"),
  
  
)