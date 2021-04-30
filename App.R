library(shiny)
library(shinydashboard)
library(dplyr)
library(gapminder)
library(lubridate)
#library(help = package_name) brings up package documentation


setwd("C:/Users/602770/Downloads/fincen/Rshiny")


source('UI.R')
source('Server.R')


app <- shinyApp(ui, server)
runApp(launch.browser = TRUE)



