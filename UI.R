

#SIDEBAR DETAILS
d_sidebar <- dashboardSidebar(
  menuItem("Test"),
  menuItem("Stats")
  
)




#BODY DETAILS
d_body <- dashboardBody(
  
  h2('Practice Dashboard'),
  
              
    fluidRow(
      column(width=3, offset=9,
             
             dateRangeInput(inputId='date_range', label = 'Select a Date Range', 
                    
                            start = as.Date('1950-01-01'), end = as.Date('2000-01-01'),
                            format = 'yyyy-mm-dd')
      )
    ),
    
    fluidRow(dataTableOutput('filtered_table'))
  
    
             

    
)





#Putting everything together in UI, Server, and shinyApp parts
ui <- dashboardPage(header = dashboardHeader(disable = TRUE),
                    sidebar = d_sidebar, 
                    body = d_body)