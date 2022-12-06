#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source("tabs/Chart1_tab.R")
# source files you are going to use here

# this is the example r sets for us
server <- function(input, output) {

    output$covidPlot <- renderPlot(plot_date_start(input$Date))

}
