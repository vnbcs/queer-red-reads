navbarPage("QUEER RED READS",
           
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