#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram

ui <- fluidPage(
    numericInput("min", "Minimum", 0),
    numericInput("max", "Maximum", 3),
    sliderInput("n", "n", min = 0, max = 3, value = 1)
)
server <- function(input, output, session) {
    observeEvent(input$min, {
        updateSliderInput(inputId = "n", min = input$min)
    })  
    observeEvent(input$max, {
        updateSliderInput(inputId = "n", max = input$max)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
