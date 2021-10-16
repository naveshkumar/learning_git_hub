install.packages("shiny")
install.packages(c(
  "gapminder", "ggforce", "gh", "globals", "openintro", "profvis", 
  "RSQLite", "shiny", "shinycssloaders", "shinyFeedback", 
  "shinythemes", "testthat", "thematic", "tidyverse", "vroom", 
  "waiter", "xml2", "zeallot" 
))

library(shiny)

source("printHW.R")

ui <- fluidPage(
  printeHW("Yes")
)
server <- function(input, output, session) {
}
shinyApp(ui, server)

#https://www.rstudio.com/resources/cheatsheets/

