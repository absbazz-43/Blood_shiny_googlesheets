### Datasets

blodd <- read.csv("C:/Users/NIAMUL/Downloads/4846062/4846062/BLOOD_DATA_ISRT/Blood_ISRT/blood.csv")



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
