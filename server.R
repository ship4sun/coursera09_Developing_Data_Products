library(shiny)

shinyServer(
  function(input, output){    
    output$conf <- renderPrint({
      if (input$id1=="1") "90%"
      else if (input$id1=="2") "95%"
      else "99%"})
    output$error <- renderPrint({input$id2})
    output$result <- renderPrint({
      input$goButton
      if (input$id1=="1") as.numeric(1.65^2/(4*(input$id2/100)^2))
      else if (input$id1=="2") as.numeric(1.96^2/(4*(input$id2/100)^2))
      else as.numeric(2.58^2/(4*(input$id2/100)^2))
      })
}
)