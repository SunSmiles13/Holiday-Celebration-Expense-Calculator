#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$text <- renderUI({
    str1 <- paste("You have selected", input$budget)
    str2 <- paste("You have chosen a range that goes from", input$familycount)
    HTML(paste(str1, str2, sep = '<br/>'))
    })
  output$ch_avg <- renderPrint({input$budget*0.30/input$familycount})
  output$val_avg <- renderPrint({input$budget*0.09/input$familycount})
  output$hal_avg <- renderPrint({input$budget*0.13/input$familycount})
  output$tg_avg <- renderPrint({input$budget*0.15/input$familycount})
  output$ba_avg <- renderPrint({input$budget*0.19/input$familycount})
  output$give_avg <- renderPrint({input$budget*0.14/input$familycount})
})
