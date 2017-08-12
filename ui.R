#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#widget: textbox, radio button, checkbox, ..

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Holiday & Celebration Expense Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput("budget",
                   "Annual Budget:",
                   min = 1,
                   max = 10000,
                   value = 1000),
      numericInput("familycount",
                   "Family Size:",
                   min = 1,
                   max = 10,
                   value = 4),
      submitButton('Average Spending per family member')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
              # HTML(paste(h4(('Christmas & Hanukkah: ') , textOutput("avg")))),
              #column(3, selectInput('smodel', 'Holidays/Celebrations', c("BIRTHDAYS & ANNIVERSARIES"," VALENTINE DAY",  "HALLOWEEN", "THANKS GIVING","CHRISTMAS & HANUKKAH","GIVING & MISC.")))
      
               fluidRow(
                 column(width = 5,
                         "BIRTHDAYS & ANNIVERSARIES ($):"),
                 column(width = 5, textOutput("ba_avg"))
                ),
               fluidRow(
                 column(width = 5,
                        "VALENTINE DAY ($):"),
                 column(width = 5, textOutput("val_avg"))
               ),
               fluidRow(
                 column(width = 5,
                        "HALLOWEEN ($):"),
                 column(width = 5, textOutput("hal_avg"))
               ),
               fluidRow(
                 column(width = 5,
                        "THANKS GIVING ($):"),
                 column(width = 5, textOutput("tg_avg"))
               )
               ,
               fluidRow(
                 column(width = 5,
                        "CHRISTMAS & HANUKKAH ($):"),
                 column(width = 5, textOutput("ch_avg"))
               )
               ,
               fluidRow(
                 column(width = 5,
                        "GIVING & MISC ($):"),
                 column(width = 5, textOutput("give_avg"))
               )
               
    )
  )
))
