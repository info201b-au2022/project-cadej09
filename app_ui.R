#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
# source files here
source("tabs/Chart1_tab.R")
source("tabs/intro.R")
source("tabs/report.R")
source("tabs/summary.R")
source("tabs/Chart2_tab.R")

ui <- navbarPage(
  theme = shinytheme("flatly"),
  title = "Live in Safer Washington",
  position = "fixed-top",
  
  # A simple header
  header = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML(" "),
    hr()
  ),
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML(" "),
    hr()
  ),
  tab_panel_intro,
  
  tab_panel_Chart1,
  
  tab_panel_Chart2,

  tab_panel_report,
  
  tab_panel_summary,
  
)
