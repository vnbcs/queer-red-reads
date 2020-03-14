server <- function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- books}, escape = FALSE, filter = 'top'))
  
}