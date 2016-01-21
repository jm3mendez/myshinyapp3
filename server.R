library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected dataset

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {

  # By declaring datasetInput as a reactive expression we ensure that:
  #
  #  1) It is only called when the inputs it depends on changes
  #  2) The computation and result are shared by all the callers (it 
  #     only executes a single time)
  #
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })

  # The output$caption is computed based on a reactive expression that
  # returns input$caption. When the user changes the "caption" field:
  #
  #  1) This expression is automatically called to recompute the output 
  #  2) The new caption is pushed back to the browser for re-display
  # 
  # Note that because the data-oriented reactive expressions below don't 
  # depend on input$caption, those expressions are NOT called when 
  # input$caption changes.
  output$caption <- renderText({
    input$caption        #," [rows= ",dim(datasetInput())[1]," cols= ",dim(datasetInput()[2]),"]" )
  })

  output$str <- renderText({
    mynames=""
    for( i in (1: dim(datasetInput())[2]) ) mynames=paste(mynames," ",names(datasetInput())[i])
    paste("DataSet Dimension: ",dim(datasetInput())[1]," rows ",dim(datasetInput())[2]," Columns, \n and its variables  are(",dim(datasetInput())[2],"): \n ", mynames )
  })
  # The output$summary depends on the datasetInput reactive expression, 
  # so will be re-executed whenever datasetInput is invalidated
  # (i.e. whenever the input$dataset changes)
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })

  # The output$view depends on both the databaseInput reactive expression
  # and input$obs, so will be re-executed whenever input$dataset or 
  # input$obs is changed. 
  output$view <- renderTable({
    dataset <- datasetInput()
    nrows <- dim(dataset)[1]
    head(dataset,input$obs)
  })
  
 # The outpua Plot is configured in the server side
  
  panel.cor <- function(x, y, digits=2, prefix="", cex.cor, ...)
   {
    usr <- par("usr"); on.exit(par(usr))
    par(usr = c(0, 1, 0, 1))
    r <- abs(cor(x, y))
    txt <- format(c(r, 0.123456789), digits=digits)[1]
    txt <- paste(prefix, txt, sep="")
    if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
    text(0.5, 0.5, txt, cex = cex.cor * r)
   }

  output$Plot <- renderPlot ({
    if(input$ptype=="Direct"){
      plot(datasetInput(),col='red',ltype=1,lwd=1,main="Direct Relation Plot")
      lines(datasetInput(),col='blue',lwd=1)
    }
    else {
      pairs(datasetInput(),ltype=1,lwd=2,main="Correlation Plot",
            lower.panel=panel.smooth, upper.panel=panel.cor)
    }
   })

 })


