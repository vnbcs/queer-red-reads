library(shiny)
library(googlesheets4)
library(DT)
library(shinythemes)

books <- read_sheet("https://docs.google.com/spreadsheets/d/1bwDA91Ch6oTBViFq5jzjRA1jLIe2CfVf80KAF2uj08w/edit", 
           sheet="Book recommendations")
names(books)[names(books)=="Link? (Google Books/Goodreads preferred)"] <- "Link"
books$Title <- paste0("<a href='",books$Link,"'>",books$Title,"</a>")
names(books)[names(books)=="Review this book here! *"] <- "Review_link"
books["Review link"] <- paste0("<a href='",books$Review_link,"'>Click here to review this work!</a>")
books <- books[c("Title", "Author","Medium","Form","Review link")]
books$Medium <- factor(c(books$Medium))
books$Form <- factor(c(books$Form))

# Define UI ----
ui <- navbarPage("QUEER RED READS",
                 
                tabPanel("About us", 
                          mainPanel(
                            "Coming soon!")),
                 
                tabPanel("Meetings", 
                          mainPanel(
                            "Coming soon!")),
                
                tabPanel("Reading list",
                mainPanel(DT::dataTableOutput("table"))),
                
                tabPanel("Suggest a work", 
                        mainPanel(
                          tags$iframe(id = "googleform",
                                      src = "https://docs.google.com/forms/d/e/1FAIpQLSd_fTgcuiUw-AwbtlSrubIt9mL8-jT8dSfXCMh73Y0thD1Dsw/viewform?embedded=true",
                                      width = 640,
                                      height = 1035,
                                      frameborder = 0,
                                      marginheight = 0))),
                
                theme = shinytheme("united"))

# Define server logic ----
server <- function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- books}, escape = FALSE, filter = 'top'))
  
}

# Run the app ----
shinyApp(ui = ui, server = server)