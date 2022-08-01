# Assignment: Week 5
# Name: Mather, Brandon
# Date: 2022-07-06

library(dplyr)
library(readxl)
library(purrr)
library(pastecs)
install.packages('car')
setwd("D:/GitHub/fantastic-disco/DSC520data")
housing_data <- read_excel('Copy of week-6-housing.xlsx')
df_data <- data.frame(housing_data)
discard(df_data, is.na)
realestate_data <- mutate(df_data, total_bathrooms = bath_full_count + bath_3qtr_count + bath_half_count)
names(df_data)

#1)
#The only modification I made on the dataset was from the other week we worked on the Housing Data. This included
# discarding any NA variables and adding in the total_bathrooms variable. I didn't feel like getting rid of any of 
# the other data would be useful since I didn't know what I needed for this weeks assignment. 

#2)
housing_model <- lm(Sale.Price~sq_ft_lot, data = realestate_data)
housing_model
housing_model2 <- lm(Sale.Price~sq_ft_lot+total_bathrooms+bedrooms, data = realestate_data)
housing_model2
#I chose total_bathrooms and bedrooms as my predictors because I felt they would be the most relevant to the total square
#feet. 

#3) 
summary(housing_model)
summary(housing_model2)
#For housing_model = Multiple R-squared:  0.01435,	Adjusted R-squared:  0.01428 and for housing_model2 = Multiple R-squared:   0.13,	Adjusted R-squared:  0.1298

#4)

#5)
confint(housing_model, 'square_feet_total_living', conf.level = .95)

#6)
anova(housing_model, housing_model2)

#7)
disagnostics_model <- lm(Sale.Price~)
