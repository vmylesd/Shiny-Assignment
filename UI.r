# Make sure UI.r and server.r are in the same folder
# Load library(shiny) 
# Set the working directory to the folder
# Type runApp() to run the application

shinyUI(fluidPage(

  titlePanel("Shiny Assignment"),
  img(src="pubs.jpg", height = 50, width = 50, bg="Transparent"),
  
  h4("Total spend per month at pubs"),
  
  sidebarPanel(
    
      sliderInput("slider1", label = h5("How much do you typically spend per visit at a pub (£)"), min = 0, 
        max = 100, value = 50),
		helpText("Hint: Move the slider to indicate how much you spend on a typical visit to a pub")
    ,
    
      sliderInput("slider2", label = h5("How often did you visit a pub in the last month"), min = 0, 
        max = 31, value = 15),
		helpText("Hint: Move the slider to indicate how many times you visit a pub per month")
  ),
  
  hr(),
  
  mainPanel(
	h6("This is how much you spend"),
    (verbatimTextOutput("value")),
	h6("This is how often you visit"),
    (verbatimTextOutput("range")),
	h4("Your total spend per month is..."),
	(verbatimTextOutput("result")),
	helpText("Hint: Try not to spend too much nor too little")
 )
  
))

