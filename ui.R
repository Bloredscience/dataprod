

library(shiny)

# Define UI for Titanic application
shinyUI(fluidPage(
 
  p(em("Documentation:",a("Nameof",href="/home/ramk/R/shinyproject/WWW/index.html"))),
  
  # Application title
 titlePanel("Survival of passengers on the Titanic"),
 
  
  # Sidebar with controls to select the variable to plot against
  # Age 
  sidebarLayout(
    sidebarPanel(
      selectInput("variable","Variable:",
                  c("Survived","Sex"))    
      
    ),
    
    # Show the caption and plot of the requested variable against
    # Age
    mainPanel(
            h3(textOutput("caption")),
        plotOutput("AgePlot")    
      )
   )
)
)

