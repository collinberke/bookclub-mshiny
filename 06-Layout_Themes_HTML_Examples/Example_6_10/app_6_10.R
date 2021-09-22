library(bslib)
library(shiny)
library(ggplot2)

ui <- fluidPage(
    theme = bslib::bs_theme(bootswatch = "cyborg"),
    titlePanel("A themed plot"),
    plotOutput("plot"),
)

server <- function(input, output, session) {
    thematic::thematic_shiny()
    
    output$plot <- renderPlot({
        ggplot(mtcars, aes(wt, mpg)) +
            geom_point() +
            geom_smooth()
    }, res = 96)
}

# Run the application 
shinyApp(ui = ui, server = server)
