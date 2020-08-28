library(shinythemes)
options(shiny.deprecation.messages=FALSE)
shinyUI(
    navbarPage("Next Word Prediction",
               theme = shinytheme("spacelab"),
    tabPanel("Home",
    fluidPage( 
        tags$body(style="background-color:white;"),
        fluidRow(column(11, ""), 
                 column(11, h1("Bidalika`s Next word prediction model", style="color: black;font-family:HP Simplified;"))),
        fluidRow(column(11, ""), 
                 column(11, h3("Enter the word/phrase whose next word is need to be predicted !", style="color: black;font-family:Times New Roman;")),
                 column(11, textInput("text", 
                                      label = p("Enter the input text!", 
                                                style="color: black;font-family:Times New Roman;font-size:20px;"),
                                      value = ""))),
        fluidRow( column(11,h3("Click on the predict to predict the next word!",style="color:black;font-family:Times New Roman;font-size:29px;")),
                  column(11, ""), column(11, submitButton(text = "Predict", icon = NULL))),
        fluidRow(column(11, ""), 
                 column(3, 
                        h3(textOutput("value"),style="color:green;font-family:Arial Black;")) , 
                 column(8, "")))),
        
    tabPanel("About",
             h3("About this application"),
             br(),
             div("Next Word Predict is a Shiny app that uses a text
                            prediction algorithm to predict the  next word(s)
                            based on text entered by a user.",
                 br(),
                 br(),
                 "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                 br(),
                 br(),
                 "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                 br(),
                 br(),
            h3("About me"),
            br(),
            div("I am Bidalika Kumari I am persuing my BTech degree
                 my github link :-",
                br(),
                  a(target = "_blank", href = "https://github.com/Bidalika",
                                                          "Bidalika Kumari"))
                 
             ))
))
