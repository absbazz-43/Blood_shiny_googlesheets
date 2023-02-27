### Datasets
blood <- read.csv("blood.csv")
library(shiny)
ui <- fluidPage(
  title = "BLOOD DATASET",
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("show_vars", "Columns",
                         names(blood), selected = names(blood))
    ),
    mainPanel(
      tabsetPanel(
        id = 'Dataset',
        tabPanel("Blood", DT::dataTableOutput("mytable1")),
        
      )
    )
  )
)
