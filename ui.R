library(shiny)

#message="just select the Dataset and the adequated Top middle selector and be Dataset Informed, Viewed, Summaried and plotted in the direct and correlated way" 

# Define UI for dataset viewer application
shinyUI( fluidPage(

  # Application title
  titlePanel("Basic Data Exploring... just select the Dataset and play..."),

  # Sidebar with controls to provide a caption, select a dataset, and 
  # specify the number of observations to view. Note that changes made
  # to the caption in the textInput control are updated in the output
  # area immediately as you type...... cellWidths=c("25%", "25%", "25%", "25%") or cellWidths=300
  sidebarLayout(

    sidebarPanel(
      textInput("caption", "Caption:", "Basic Data Exploring (v0.3)"),
      selectInput("dataset", "Choose a Dataset:",
                choices = c("rock", "pressure", "cars")),
      numericInput("obs", "Number of rows to View:", 7),
      radioButtons("ptype","Choose Plot Type:", list("Direct","Correlation"))
    ),

  # Show the caption, a summary of the dataset and an HTML table with
  # the requested number of observations

    mainPanel(
      tabsetPanel(
        tabPanel("Caption", h4(textOutput("caption"))),
        tabPanel("Info",   textOutput("str")),
        tabPanel("Summary", verbatimTextOutput("summary")),
        tabPanel("View",  tableOutput("view")),
        tabPanel("PLot",  plotOutput("Plot"))
        ),
      textOutput("message")
      )
    ) # Sidebar Layout

 ) # Fluid Page1

) # Shiny

