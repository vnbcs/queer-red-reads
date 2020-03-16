navbarPage("QUEER RED READS",
           
           tabPanel("About us", 
                    mainPanel(
                      "Coming soon!")),
           
           tabPanel("Meetings", 
                    mainPanel(
                      "Coming soon!")),
           
           tabPanel("Reading list",
                    mainPanel(DT::dataTableOutput("table"), fillContainer = TRUE)),
           
           tabPanel("Suggest a work", 
                    fluidPage(
                      fluidRow(column(12,
                      tags$iframe(id = "googleform",
                                  src = "https://docs.google.com/forms/d/e/1FAIpQLSd_fTgcuiUw-AwbtlSrubIt9mL8-jT8dSfXCMh73Y0thD1Dsw/viewform?embedded=true",
                                  width = "100%",
                                  height = 1200,
                                  frameborder = 0
                                  ))))),
           
           theme = shinytheme("united"),
           collapsible = TRUE)