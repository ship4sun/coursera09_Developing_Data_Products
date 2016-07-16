library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Calculation the Number of Samples"),
  sidebarPanel(
       radioButtons("id1", "Confidence Level", 
                       c("90%"="1", 
                         "95%"="2",
                         "99%"="3")),
       numericInput('id2', 'Numeric input, Maximum error(%)', 0, min=0, max=100, step=1)
        ),
  mainPanel(
    h3('Illustrating outputs'),
    h4('Confidence Level you choose'),
    verbatimTextOutput("conf"),
    h4('Maximum error you accept'),
    verbatimTextOutput("error"),
    h4('Minimum Number of Samples is'),
    verbatimTextOutput("result")
    )
))