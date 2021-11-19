library(shiny)
setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
cars2018 <- read.csv("cars2018.csv",stringsAsFactors = TRUE)
data(cars2018)

function(input,output) {
  
  output$histogram <- renderPlot({
    
    hist(cars2018[,input$VarName],
         main = paste("Histogram of", input$VarName),
         col="pink")
  })
}