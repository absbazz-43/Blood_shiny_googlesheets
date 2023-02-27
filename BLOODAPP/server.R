server <- function(input, output) {
  
  # choose columns to display
  blood2 = blood[sample(nrow(blood), nrow(blood)), ]
  output$mytable1 <- DT::renderDataTable({
    DT::datatable(blood[, input$show_vars, drop = FALSE])
  })
  
}