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
source("source/Summary_Table.R")
source("tabs/intro.R")
source("tabs/report.R")
source("tabs/summary.R")
source("tabs/Chart2_tab.R")
# source files you are going to use here


server <- function(input, output) {

  # Liz chart
    output$covidPlot <- renderPlot(plot_date_start(input$dates))
    
    output$type_crime <- renderPlot({
      barplot(crimes_2020[,input$categories],
              main=input$categories,
              ylab = "incedence",
              "MURDER" = 58,
              xlab = "Categories")
     })
      
    output$table <- DT::renderDataTable({
      cjdb_combined_table
    })
    
    output$img1 <- renderImage({
      # Return a list containing the filename
      list(src = "www/img1.jpeg",
           contentType = 'image/jpeg',
           width = 400,
           height = 300,
           alt = "Prevent Crime")
    }, deleteFile = F)
    
    output$img2 <- renderImage({
      # Return a list containing the filename
      list(src = "www/img2.png",
           contentType = 'image/png',
           width = 400,
           height = 300,
           alt = "Let's Go")
    }, deleteFile = F)
    
    output$img <- renderImage({
      # Return a list containing the filename
      list(src = "www/img.png",
           contentType = 'image/png',
           width = 400,
           height = 300,
           alt = "Vehicle Theft")
    }, deleteFile = F)
    
    output$trend <- renderImage({
      # Return a list containing the filename
      list(src = "www/trend.png",
           contentType = 'image/png',
           width = 400,
           height = 300,
           alt = "trend")
    }, deleteFile = F)
    
    
}
