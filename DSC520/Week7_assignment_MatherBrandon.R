# Assignment: ASSIGNMENT 2 Week 7
# Name: Mather, Brandon
# Date: 2021-07-22

setwd("D:/GitHub/dsc520/data")
survey_df <- read.csv('student-survey.csv')
#2) 
  #1)
time_reading <- survey_df$TimeReading
time_tv <- survey_df$TimeTV
happiness <- survey_df$Happiness
gender <- survey_df$Gender
cov(time_reading, time_tv)
cov(time_reading, happiness)
cov(time_tv, happiness)
# You would use the covariance to measure either a positive linear relationship or a negative relationship. 
# What I found using these equations is that the only one that has a positive relationship together is the time
# on the tv compared to happiness

  #2)
#These all would be quantitative variables except for gender which would be qualitative. Changing the measurement
# wouldn't change the result very much, it's clearly shown through the numbers that the time reading doesn't have 
# an effect on happiness compared to time on tv.

  #3)
result <- cor.test(survey_df$TimeReading, survey_df$Happiness, method = "pearson")
result
# I chose the Pearson Correlation test to measure the strength of linear association between the two variables.
# this results in a negative correlation. 

  #4)

    #1)
cor(survey_df)
    #2)

cor(survey_df$TimeTV, survey_df$Gender)

    #3) 
result_2 <- cor.test(survey_df$TimeReading, survey_df$Happiness, conf.level = 0.99)
result_2

    #4)The results shows that there isn't a relationship between time reading and their happiness. 
  
  #5)
read <- cor(survey_df$TimeReading,survey_df$Happiness)
read
read2 <- read ^ 2
read2
tv <- cor(survey_df$TimeTV,survey_df$Happiness)
tv
tv2 <- tv ^ 2
tv2
#The numbers show that they are not dependent on one another

  #6) 
cor(survey_df$TimeReading,survey_df$TimeTV)
#The correlation between time reading and time on tv is a negative correlation and is closer to one then zero,
#which means they could have a negative relationship together.

  #7)
library(ppcor)
threevariables <- pcor.test(survey_df$TimeReading, survey_df$Happiness, survey_df$Gender)
threevariables
# The correlation between time reading and happiness is normally -.0.4348663, when gender (controlling) is added 
#it drops to -0.4277985  which doesn't make a huge change. 
