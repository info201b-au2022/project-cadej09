#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
# source files here
# example source(file.R)

ui <- navbarPage(
  title = "P3",
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
# example panels from sourced separate files 
#  tab_panel_intro,
#  tab_panel_interactive
  
)