library(shinydashboard)
library(shiny)
ui=dashboardPage(
  dashboardHeader(title = "Basic Dashboard"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(plotOutput("Plot1",height = 250)),
      box(
        title="Controls",
        sliderInput("slider","Number of Observations",1,100,50)
      )
    )
  )
)

server=function(input,output) {
  histdata=rnorm(500)
  output$Plot1=renderPlot({
    data=histdata[seq_len(input$slider)]
    hist(data)
  }
    
  )
}

shinyApp(ui,server)
