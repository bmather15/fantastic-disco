# Assignment: Week 4
# Name: Mather, Brandon
# Date: 2022-06-29

#1)
  #1) The observational units in this study is to compare student performance 
#between course grades and total points earned in the class.
  #2) Categorical: Section, Quantitative: Count, Score
  #3)
setwd("~/Documents/GitHub/DSC510Spring2022/dsc520")
scores_data <- read.csv("data/scores.csv")
regular_section <- scores_data[ scores_data$Section == "Regular", ]
sports_section <- scores_data[ scores_data$Section == "Sports", ]
  #4)
library(ggplot2)
ggplot(regular_section, aes(x= Count, y=Score)) + geom_point() + ggtitle(' Regular Score vs. Students') + xlab('Number of Students') + ylab('Scores')
ggplot(sports_section, aes(x= Count, y= Score)) + geom_point() + ggtitle('Sports Score vs. Students') + xlab('Number of Students') + ylab('Scores')
    #1) Based off the plots, it looks like students scored higher in the Regular Score category. The reason is that the number of students with 300 
      # or more points are more towards the middle of the plot, where the points are more towards the left for the sports scores. 
    #2) No every student did not score more points then every student in the other section.This means the tendency was for them to score higher but was not guarenteed. 
    #3) One variable that could matter is the prior knowledge students had going into each class. They could have done a pre knowledge test to see if that would change 
      # what they learned and if their scores improved throughout the class. 


#2)
  #1)
library(readxl)
setwd("~/Documents/GitHub/fantastic-disco/DSC520data")
housing_data <- read_excel('Copy of week-6-housing.xlsx')
df_data <- data.frame(housing_data)
apply(df_data, 2, length)
  #2)
agg_data <- aggregate(df_data,list(df_data$Sale.Price), max)
agg_data
  #3)
library(plyr)
min_saleprice <- ddply(df_data, 'zip5', summarize, min_sale = min(Sale.Price))
min_saleprice
  #4)
library(ggplot2)
plot_min_sale <- ggplot(min_saleprice, aes(x= zip5, y= min_sale)) + geom_point() + ggtitle('Max Sale Price Zip Code') + xlab('Zip Code') + ylab('Sale Price')
plot_min_sale
  #5) 
# The outliers for the data i pulled would be the zip codes 98053 and 98052 which had the lowest minumum sales
  #6)
mutate(df_data, Total Bathrooms = bath_full_count + bath_3qtr_count + bath_half_count, Age of Home = Sale.Date - year_built)


