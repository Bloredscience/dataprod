

library(datasets)

survivaldata = Titanic
survivaldata = data.frame(survivaldata)
survivaldata$Age = as.numeric(survivaldata$Age)
survivaldata$Survived = as.factor(survivaldata$Survived) 
survivaldata$Sex = as.factor(survivaldata$Sex) 
survivaldata$Sex = factor(survivaldata$Sex, labels = c("Male","Female"))
survivaldata$Age = factor(survivaldata$Age, labels = c("Adult","Child"))

# Define server logic required to plot various variables against Age
shinyServer(function(input, output) {
  
    # Compute the forumla text in a reactive expression since it is 
    # shared by the output$caption and output$AgePlot expressions  
    formulaText = reactive({
    paste("Age ~", input$variable)
  })
  
  # Return the formula text for printing as a caption
    output$caption = renderText({
    formulaText()
  })
  
  # Generate a plot of the requested variable against Age
    output$AgePlot = renderPlot({
    mosaicplot(as.formula(formulaText()), 
              data = survivaldata, color = "red")
   })
})

