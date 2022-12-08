library(shiny)

p1 <- "For our project in INFO 201, we have decided to take a look at datasets related to crimes in the United States. 
       We then specifically chose to examine WA state as it is where we live, where our families and friends live.
       From this data analyzation and pattern seeking, our goal is to possibly influence the policymakers of WA state
       and make Washington state a better place to live, a safer place to live with low crime rates. "
  
p2 <- "In order to achieve our goal, we first had to come up with a few research questions that we could use
       to guide ourselves in data analyzing and find specific details about the things we found important/interesting.
       the the questions were 'How has the crime rate in Washington State changed over the last twenty years?',
       'How much of the crime that happens in Washington is in or near Seattle?',
       'Did the crime get worse or better during the years we suffered from COVID-19?', and
       What kind of or type of crime is most common in Washington State? Seattle?"
  
p3 <- "To find answers to our questions, we have found some datasets that we could use to do some analyzing.
       The details of these datasets will be given in the report tab. But to briefly go over them at the moment,
       we have downaloded few pre-made dataset collected by the Washington State Statistical Analysis Center
       "
  
p4 <- ""

tab_panel_intro <- tabPanel(
  "Introduction",
  h1("Project Introduction"),
  p(p1),
  p(p2),
)