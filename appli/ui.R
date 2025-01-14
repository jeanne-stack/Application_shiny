#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a text input and slider inputs
  sidebarLayout(
    sidebarPanel(
      textInput("nom", "Quel est ton nom ?"),
      sliderInput("curseur", label = "Si x est ", min = 1, max = 100, value = 30), 
      sliderInput("curseur2", label = "Si y est ", min = 1, max = 100, value = 5), 
      "alors x * y est : ",
      selectInput("dataset", "Dataset", choices = c("economics", "faithfuld", "seals"))
    ),
    
    # Main panel with outputs
    mainPanel(
      h1(textOutput("salutation")), 
      h3(textOutput("le_texte")),  # Mise en forme plus petite pour le texte
      verbatimTextOutput("summary"),
      plotOutput("le_graphe")
    )
  )
)

