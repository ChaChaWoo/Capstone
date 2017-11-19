## Capstone: Coursera Data Science
## Kristen Dardia

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
  fluidPage(
    titlePanel("TEXT PREDICT"),
    sidebarLayout(
      sidebarPanel(
        helpText("Enter a word or phrase to see what the app will predict as the next word."),
        hr(),
        textInput("inputText", "Enter word(s) here",value = ""),
        hr(),
        helpText("The app will react as you enter text.", 
                 hr(),
                 "The predicted word will appear in the box to the right."),
        hr(),
        hr()
      ),
      mainPanel(
        h2("The Next Word Is:"),
        verbatimTextOutput("prediction"),
        strong("Word or Phrase Entered is:"),
        strong(code(textOutput('sentence1'))),
        br(),
        strong("Application Status:"),
        strong(code(textOutput('sentence2')))
      )
    )
  )
)