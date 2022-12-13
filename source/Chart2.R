library(tidyverse)
library(plotly)

#bring the csv file into the working directory. 

Crimecategories <- read.csv("data/nibrs_12_20.csv")
options(max.print = 90000) 

#view the data set
#View(Crimecategories)
#extract rows that include Seattle
crimes_in_seattle <- Crimecategories [c(936), ]
#print(crimes_in_seattle)


# Delete columns that are irrelevant columns 
crimes_in_seattle1 <- crimes_in_seattle[,-1:-8]
#print(crimes_in_seattle1)

crimes_in_seattle2 <- crimes_in_seattle1 [,-c(9,10,19,20)]
#print(crimes_in_seattle2)

#make an index for each category
categories <- c("MURDER", "MANSLAUGHTER", "FORCIBLE_SEX", "ASSULT","NON_FORCIBLE_SEX","KIDNAPPING_ABDUCTION", "HUMAN_TRAFFICKING", "VIOL_OF_NO_CONTACT","ARSON", "BIBERY", "BURGLARY", "COUNTERFEITING_FORGERY", "DESTRUCTION_OF_PROPERTY", "EXTORTION_BLACKMAIL", "ROBBERY", "THEFT","DRUG_VIOLATIONS", "GAMBLING_VIOLATION", "PORNOGRAPHY", "PROTITUTION", "WEAPON_LAW_VIOLATION", "ANIMAL_CRUELTY")
incidence <- c(52, 16, 520, 11632, 4, 147, 14, 1353, 209, 1, 10548, 374, 6641, 106, 1489, 40163, 1021, 1, 40, 29, 614, 28)  

crimes_2020 <- data.frame(
  categories = c("MURDER", "MANSLAUGHTER", "FORCIBLE_SEX", "ASSULT","NON_FORCIBLE_SEX","KIDNAPPING_ABDUCTION", "HUMAN_TRAFFICKING", "VIOL_OF_NO_CONTACT","ARSON", "BIBERY", "BURGLARY", "COUNTERFEITING_FORGERY", "DESTRUCTION_OF_PROPERTY", "EXTORTION_BLACKMAIL", "ROBBERY", "THEFT","DRUG_VIOLATIONS", "GAMBLING_VIOLATION", "PORNOGRAPHY", "PROTITUTION", "WEAPON_LAW_VIOLATION", "ANIMAL_CRUELTY"),
  incidence = c(52, 16, 520, 11632, 4, 147, 14, 1353, 209, 1, 10548, 374, 6641, 106, 1489, 40163, 1021, 1, 40, 29, 614, 28))

#plot the chart
type_crime <- ggplot(crimes_2020) +
  geom_col(mapping = aes(x = categories, y = incidence, fill = categories))

#View(type_crime)
#plot(type_crime)

# calculate a mean for it 
#summary_of_crimes_in_seattle <- summarize (
# crimes_in_seattle2,
#mean_murder = mean(MURDER),
#mean_manslaughter = mean(MANSLAUGHTER),
#mean_forcible_sex = mean(FORCIBLE_SEX),
#mean_assult = mean(ASSULT),
#mean_non_forcible_sex = mean(NON_FORCIBLE_SEX),
#mean_kidnapping_abduction = mean(KIDNAPPING_ABDUCTION),
#mean_human_trafficking = mean(HUMAN_TRAFFICKING),
#mean_violence_of_no_contact_ = mean(VIOL_OF_NO_CONTACT),
#mean_arson = mean(ARSON),
#mean_bibery = mean(BIBERY),
#mean_burglary = mean(BURGLARY),
#mean_counterfeiting_forgery = mean(COUNTERFEITING_FORGERY),
#mean_destruction_of_property = mean(DESTRUCTION_OF_PROPERTY),
#mean_extortion_blackmail = mean(EXTORTION_BLACKMAIL),
#mean_robbery = mean(ROBBERY),
#mean_theft = mean(THEFT),
#mean_drug_violations = mean(DRUG_VIOLATIONS),
#mean_gambling_violations = mean(GAMBLING_VIOLATION),
#mean_pornography = mean(PORNOGRAPHY),
#mean_prostitution = mean(PROTITUTION),
#mean_weapon_law_violation = mean(WEAPON_LAW_VIOLATION),
#mean_animal_cruelty = mean(ANIMAL_CRUELTY),
#)

#print(summary_of_crimes_in_seattle)

#View(summary_of_crimes_in_seattle)

