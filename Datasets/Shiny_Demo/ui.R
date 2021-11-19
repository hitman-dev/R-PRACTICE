library(shiny)
setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
cars2018 <- read.csv("cars2018.csv",stringsAsFactors = TRUE)

pageWithSidebar(
  headerPanel = headerPanel("Histogram"),
  
  sidebarPanel = sidebarPanel(
    
    selectInput(inputId = "VarName",
                label = "Select Numeric Variable:",
                choices = list("Displacement",
                               "Cylinders", "MPG","Gears",
                               "Max.Ethanol"))
  ) ,
  mainPanel = mainPanel(
    plotOutput(outputId = "histogram")
  )
)
