# UI elements coding
library(shiny)

#a function that takes a string arg and outputs a string
helloworldprinter <- function(YN){
  if (YN=="YES") {
    pout <- "Hellow world"
  }
  return(pout)
}

fluidPage_V1 <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table"),
  helloworldprinter("YES")
)

