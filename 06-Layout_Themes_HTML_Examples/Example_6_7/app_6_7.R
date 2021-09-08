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
#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
    navlistPanel(
        id = "tabset",
        "Heading 1",
        tabPanel("panel 1", "Panel one contents"),
        "Heading 2",
        tabPanel("panel 2", "Panel two contents"),
        tabPanel("panel 3", "Panel three contents")
    )
)
server <- function(input, output, session) {
    output$panel <- renderText({
        paste("Current panel: ", input$tabset)
    })
}
shinyApp(ui = ui, server = server)


# Run the application 
shinyApp(ui = ui, server = server)
