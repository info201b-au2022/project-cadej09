#### Code name - WashCrime
## Project Title - Live in Safer Washington
### Authors -
Elizabeth McCrady _(elm53@uw.edu)_, Cade Jeong _(cadej09@uw.edu)_, Busung Chung _(bchung4@uw.edu)_, Sanika Gadam _(gadamsan@uw.edu)_
#### Affiliations - INFO-201 BD: Technical Foundations of Informatics - The Information School - University of Washington
#### Keywords - Washington, Crime, Safety
#### Date - AU22
## Abstract:
We are greatly concerned about the crime rates in Washington state, and specifically the neighborhood of the Seattle area. Because we are a group of students attending University of Washington - Seattle, who may live in those danger zones or have friends and families who do. To address this concern, we are seeking to discover patterns of crime in the interested areas and possibly influence the policymakers to take actions in reducing crimes, and increase the safety level for the citizens of Washington state.

## Introduction:
Crime rates in Washington have been on a steady increase since 2013 when the state ranked 30th for the states with the highest level of violent crime across the United States. It is an extremely pressing topic in the state of Washington and although laws have been implemented to reduce crime, it has still been on a steady increase in recent years. The types of crimes that occur in Washington include larceny, burglary, motor vehicle theft, and violent crime. The use of personal weapons, firearms and knives needs to be controlled by the government especially because juveniles have access to them and are contributing to the high crime rates in Washington. The number of violent crimes committed in Washington state are growing more than ever before and is it important for our society to bring light to this topic so that we can establish safety and security measures.

## The Problem Domain:
The heavy uprising in crime all over Washington has concerns over *human safety* and the protection of individuals. "Everyone has the right to the highest attainable standard of protection against natural and man-made hazards."(__Twigg__) Crime has been a constant uproar over the past years and the crime rates are still rising. As much as the government and many individuals want crime to go away, it is difficult. Safety is important when looking at different aspects in society. Culture is deeply rooted in human safety as well. Hate crimes that target certain race, gender, or cultural backgrounds are becoming a national issue. Statistics show that there had been a drastic increase of hate crimes during the pandemic and is still an ongoing issue. The government is trying their best to keep us safe as citizens of America, but there are still flaws in the system that make certain people vulnerable to crime. The right of safety can be interpreted through economic standards, where humans have the right to work in a safe environment without any worries of getting injured.  

The direct stakeholders include police officers, judges, probation officers, and parole officers. Lawyers, court personnel, and other individuals. The skills that are assumed, when looking at the direct stakeholders, we can observe that they require some direct involvement in the government system, where they contribute to keeping the nation stable through laws. I believe that the citizens of the nation are their first priority and the value that they hold the strongest.  Indirect stakeholders include elected officials, the media, groups who serve victims of crime, businesses, families, schools, and society in general.

I believe that through the interventions with data and technology, there would be a visible reduction of crime and will be beneficial to the people, however, this might lead to different types of crime that find a way under police surveillance. As technology advances by the day, criminals find more ways to go in and out of the system. The advancement of technology is a double sided knife, where it can help the government while it has the potential to portray harm to society.

We believe that businesses that have direct connection to the advanced technology will benefit the most through this innovation. On the other hand, unanticipated consequences such as, crime that involves more advanced technology might be used to harm people bringing the damage to the civilians.  

## Research Questions:
- How has the crime rate in Washington State changed over the last twenty years?
  - It is important to analyze trends in data in order to predict what potentially can happen in the future. If we pick up on patterns as to when crime rates were high or low, we can instill safety measures accordingly. If there is an outlier in the data, we can trace it back to an event that may have caused the shift in data.
- How much of the crime that happens in Washington is in or near Seattle?
  - Seattle is a big city and has a lot of crime. It is helpful to narrow down the area where crime occurs so that researchers can focus their attention to a smaller region and get more accurate data. Washington is a large state and if a lot of the crime is concentrated in one city, we can dive deeper into Seattle itself.
- Did the crime get worse or better during the years we suffered from COVID-19?
  - This is important to know because finding patterns can help us prevent something from happening in the future. We can anticipate crime rates going up or down when specific events occur and plan accordingly. This will save our community and economy from dealing with negative consequences more than once for the same issue.
- What kind of or type of crime is most common in Washington State?
  - In order to research what is efficient or not, we should know what kind of crime is most common. It will help us narrow down our focus on how to implement changes in policies to prevent future crimes.

## The Dataset:
We have so far found four datasets that are specifically about the crimes that happened in Washington State. Our first dataset _“CJDB90_20.csv”_ is a file that contains every possible information about crimes in Washington with its 228 variables. Going into more detail are _“nibrs_12_20.csv”_ and _“srs_94_19.csv”_. These two datasets happen to provide us a little more detailed information about the crimes in Washington than the first dataset due to having more compact variables and using different systems. Overall, we could use any of these datasets to answer our research questions in regards to finding patterns, change in crime rates for specific time periods, areas of crime, and so on. Our last dataset, _“SPD_Crime_Data_08_Present.csv”_ provides us in depth details for crimes reported by the SPD. This could help us find more detailed information about crimes in Seattle, which in the end will be able to answer our research question about nearby or in Seattle crimes. If in need, we will continue to update our list of datasets either by removing some that might not provide us much, or by adding more datasets to solidly answer our research questions.

| Data File| Purpose | Observations(rows) | Variables(columns) | Source |
| -------- | ------- |------------------- | ------------------ | ------ |
| CJDB90_20.csv | WA_Crime_Report | 1,271 | 228 | Data. Washington State Statistical Analysis Center. (n.d.). Retrieved October 31, 2022, from https://sac.ofm.wa.gov/data |
| nibrs_	12_20.csv | NIBRS_Report | 2,357 | 34 | Data. Washington State Statistical Analysis Center. (n.d.). Retrieved October 31, 2022, from https://sac.ofm.wa.gov/data |
| srs_94_19.csv | SRS_Report | 5,283 | 22 | Data. Washington State Statistical Analysis Center. (n.d.). Retrieved October 31, 2022, from https://sac.ofm.wa.gov/data |
| SPD_Crime_Data_08_Present.csv revised: spd_dataset.csv | SPD_Report | 1,011,283 | 17 | Spd. (2022, October 31). SPD crime data: 2008-present: City of seattle open data portal. Seattle Open Data. Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/SPD-Crime-Data-2008-Present/tazs-3rd5 |

The first three datasets, CJDB, nibrs, and srs happened to come from the same source. These datasets were collected and organized by “Washington State Statistical Analysis Center” with their sources of data being listed on [this pdf](https://sac.ofm.wa.gov/sites/default/files/public/pdf/datades.pdf). Their work has the purpose of providing assistance in the successful coordination, implementation, and monitoring of public policy. And unfortunately, they do not list a specific date of when the dataset was created. SPD Crime Data dataset is collected by the SPD, updating on a daily basis using the nibrs system with only data that are UCR approved (Our dataset is up to date for 10-31-2022). It was created Feb 14, 2020 with the purpose of their work being similar to WA SAC.

Both of the sources had their data collection funded by the government. However, for WA SAC specifically, they received the help of Governor Booth Gardner, who authorized the Washington State Statistical Analysis Center in 1989 with Executive Order 89-03. And on top of that, they also receive help from JRSA (Justice Research and Statistics Association) and the Bureau of Justice Statistics. With such datasets being accessible to the public, there are hopes that these could be used by the policymakers to create laws that address the issues and benefitting the citizens with a safer living environment. Simultaneously however, there exist many threats as these datasets could be used by the wrong hands to create ways that could benefit the potential criminals, and make money for some companies.

Going back to [this pdf](https://sac.ofm.wa.gov/sites/default/files/public/pdf/datades.pdf), WA SAC not only list out their source of data, but they also go in depth to provide detailed information about each of their sources. For each of their sources, they talk about what kind of data is collected, what system they used to collect their data, what their sub-variables are about, and more to make sure how credible they are.

## Expected Implications:
If we answer our research questions some expected implications would be about the crime data we collect. Depending on how the crime rate has changed in 10-20 years would lead us to have an implication that we want to make a change. If the crime rate gets worse then us collecting this data will imply that we want to change and make the crime rate flip and go down. If the crime rate is going down then it's implied that we will see why it is going down and what we can continue to do. Another implication could come from our question of crime in Seattle and if we can narrow down specific areas. This can imply that we want to make those “dangerous” neighborhoods safer if they do have a high crime rate. If we can answer our question about how Washington State protects its citizens, it can help policymakers push for policies that would continue Washington helping its citizens.

## Limitations:
Most of the limitations we would have would come from a lack of data. For instance if we want to answer our question about which neighborhoods in Seattle have the most crime, we might not come across data that would aid in answering this question. We can address this by changing our question or by expanding the question into something we can address multiple cities in Washington with. Limitations could also come from gathering information from a bias source that may not have reliable data. We have to make sure that all data we collect and store is from an unbiased source and will help us answer our questions effectively.

## Acknowledgement:
## References:
- Data. Washington State Statistical Analysis Center. (n.d.). Retrieved October 31, 2022, from https://sac.ofm.wa.gov/data
- Spd. (2022, October 31). SPD crime data: 2008-present: City of seattle open data portal. Seattle Open Data. Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/SPD-Crime-Data-2008-Present/tazs-3rd5

- Crime. (n.d.). Retrieved October 31, 2022, from https://crime-data-explorer.fr.cloud.gov/pages/home
- Ucl. (2022, August 13). UCL Hazard Centre. Retrieved October 31, 2022, from https://www.ucl.ac.uk/hazard-centre/sites/hazard_centre/files/wp9.pdf
- Take online courses. earn college credit. Research Schools, Degrees &amp; Careers. Study.com | Take Online Courses. Earn College Credit. Research Schools, Degrees &amp; Careers. (n.d.). Retrieved October 31, 2022, from https://study.com/academy/lesson/identifying-criminal-justice-stakeholders.html
- Kamb, L. (2020, November 24). Washington's rising hate crime numbers in latest report tell only part of the story, experts say. The Seattle Times. Retrieved October 31, 2022, from https://www.seattletimes.com/seattle-news/washingtons-rising-hate-crime-numbers-in-latest-report-tell-only-part-of-the-story-experts-say/

## Appendix A: Questions
