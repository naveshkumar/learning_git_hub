#This is where the 3 parts of the App exist
#final commit

library(shiny)

#UI elements and Server instructions are sourced from their respective files


#UI Elements
source("UI.R")
ui <- fluidPage(
  fluidPage_V1
)

#Server Instructions sourced from SERVER.R
source("SERVER.R")

#Run the App
shinyApp(ui, server_v1)

#https://www.rstudio.com/resources/cheatsheets/

