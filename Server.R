
server <- function(input, output){
  
      #Bringing in sample data to use
      df <- gapminder::gapminder %>% mutate(year = ymd(year, truncated = 2L))
      

      output$filtered_table <- renderDataTable({df %>% filter(year >= ymd(input$date_range[1]) & 
                                                        year < ymd(input$date_range[2]))
        
        
      })
          

  
  
}

