library(shiny)

p1 <- "With the ever increasing crimes in the Washington state, we have noticed that as those who are
       vulnuerable to these threats we need some sort of protection or know somehow feel safe in order 
       to live. Safety is important when looking at different aspects in society. Culture is deeply rooted in human safety as well. 
       Hate crimes that target certain race, gender, or cultural backgrounds are becoming a national issue. 
       Statistics show that there had been a drastic increase of hate crimes during the pandemic and is still an ongoing issue.
       For this project, we have decided to take a look datasets that are related to crimes in the Washington State.
       From this data analyzation and pattern seeking, our goal is to possibly influence the policymakers of WA state
       and make Washington state a better place to live, a safer place to live with low crime rates."
  
p2 <- "In order to achieve our goal, we first had to come up with a few research questions that we could use
       to guide ourselves in data analyzing and find specific details about the things we found important/interesting.
       The questions were 'How has the crime rate in Washington State changed over the last twenty years?',
       'How much of the crime that happens in Washington is in or near Seattle?',
       'Did the crime get worse or better during the years we suffered from COVID-19?', and
       What kind of or type of crime is most common in Washington State? Seattle?"
  
p3 <- "To find answers to our questions, we have found some datasets that we could use to do some analyzing.
       The details of these datasets will be given in the report tab of our app. But to briefly go over them at the moment,
       we have downaloded and used a few datasets collected by the Washington State Statistical Analysis Center and 
       another one from Open Seattle Data Base collected and provided by the SPD. These datasets contain
       information about the crimes that occurred in Washington State with the SRS and/or NIBRS tactics.
       The general timeline of these datasets range from around 1990 to 2020."
  
p4 <- "Some of the key findings that we had while working on this project was that ever since the start of data
       collection and up until the most recently updated date, there has always been a positive sloped,
       increase in the number of crimes occurring in Washington state. Most of these crimes tend to happen
       inside of or near Seattle area where it is most populated. And the most common type of crime hapens to be theft.
       And now we would like to invite you to take a look at few more tabs that will each go over the research questions and give
       more detailed information/answer to those questions along with a very interesting data visualization. 
       And towards the end, there will also be tabs with a report document and summary, which will go over
       more key takeaways and findings from our project. 
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