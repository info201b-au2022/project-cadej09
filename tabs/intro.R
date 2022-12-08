library(shiny)

p1 <- "Welcome to Live in Safer Washington. This is an app created for our project in INFO 201.
       For this project, we have decided to take a look at datasets related to crimes in the Washington State. 
       We chose the Washington State as the state to exmaine because it is where we live, where our families and friends live.
       From this data analyzation and pattern seeking, our goal is to possibly influence the policymakers of WA state
       and make Washington state a better place to live, a safer place to live with low crime rates."
  
p2 <- "In order to achieve our goal, we first had to come up with a few research questions that we could use
       to guide ourselves in data analyzing and find specific details about the things we found important/interesting.
       The questions were 'How has the crime rate in Washington State changed over the last twenty years?',
       'How much of the crime that happens in Washington is in or near Seattle?',
       'Did the crime get worse or better during the years we suffered from COVID-19?', and
       What kind of or type of crime is most common in Washington State? Seattle?"
  
p3 <- "To find answers to our questions, we have found some datasets that we could use to do some analyzing.
       The details of these datasets will be given in the report tab. But to briefly go over them at the moment,
       we have downaloded few pre-made dataset collected by the Washington State Statistical Analysis Center and 
       another one from Open Seattle Data Base collected and provided by the SPD."
  
p4 <- "And now we invite you to take a look at few more tabs that will each go over the research questions and give
       more detailed information/answer to those questions along with a very interesting data visualization.
       Enjoy your time exploring our findings from the project."

tab_panel_intro <- tabPanel(
  "Introduction",
  h1("Project Introduction"),
  imageOutput("img1"),
  p(p1),
  p(p2),
  p(p3),
  p(p4),
  imageOutput("img2"),
)