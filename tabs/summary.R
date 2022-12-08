library(shiny)

tab_panel_summary <- tabPanel(
  "Summary",
  h1("Sumary Takeaways from Our Project"),
  p("On this page, we will go over each research questions and what information we can takeaway from them."),
  
  h2("Number of Crimes Trend"),
  p("The general trend that we could find from our datasets was that there had been a increase of
     5664 crimes per year in Washington state. This is something that can be used as sort of a guideline
     for the policymakers to look at when making new changes and seeing if it had a positive effect or not.
     If they can continue to implement new policies and eventually the trend of crimes in Washington over year
     gets lower than 5664, then that means their new policies were very much effective and the citizens will feel safer."),
  imageOutput("trend"),
  
  h2("How Many of Crimes is In or Near Seattle?"),
  p("This is a table about number of crimes and arrests by counties in WA state."),
  DT::dataTableOutput("table"),
  p("As we can see here on this table, we can see here that the county with the most crime was
     King county, which Seattle belongs to. Although because we can't just assume that most of the
     crimes that happen in King county is from Seattle. However, there still exist a great chance 
     that it is looking at the SPD dataset which contains more than 1,000,000 observations where
     each observation represents a crime case. "),
  
  h3("Crime Trend During Covid"),
  p("The key takeaway from this research question is that in general, when such events occur, there is 
     a chance that the number of crimes will spike and hit its peak. This is possibly the same for other
     social movements as well and not just a pandemic because the main reason for those who are first time
     committing crime during this time, is mainly due to their jobloss and other social effects from the events."),
  
  h4("Which/What Kind of Crime is Most Common"),
  p("The keytakeaway from this research question is that the most common crime that occurred in Washington state 
     is theft with the most common subcategory being motor vehicle theft. This is important to note because
     this is a valuable information that can be used by the policymakers to come up with new policies that can
     possibly lower the crime rates of this type or possibly make it so that people are less effected by this crime. "),
  imageOutput("img"),
)