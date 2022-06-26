# Assignment: Week 3
# Name: Mather, Brandon
# Date: 2022-06-24

#1:

#2:
library(ggplot2)
theme_set(theme_minimal())
setwd("/documents/GitHub/DSC510Spring2022/dsc520")
community_su <- read.csv("data/acs-14-1yr-s0201.csv")
str(community_su)
nrow(community_su)
ncol(community_su)

#3:
numb_HSdegree <- ggplot(community_su, aes(HSDegree)) + geom_histogram(aes(y = ..density..), binwidth = 2) + ggtitle('Number of High School Degrees') + xlab('Degrees (percentage)') + ylab('Cities')

#4:
  #1: No this is not unimodal.
  #2: No it is not approximately symmetrical.
  #3: Yes it is approximately bell-shaped.
  #4: No it's no normal, it's negative skewed.
  #5:
numb_HSdegree + stat_function(fun = dnorm, args = list(mean = mean(community_su$HSDegree, ns.tm = TRUE), sd = sd(community_su$HSDegree, na.rm = TRUE)), colour = "black", size =1)
  #6: I don't believe that a normal distribution can be used for this model due to it being negative skewed.

#5:
qqplot.HSDegree <- qplot(sample = community_su$HSDegree)
qqplot.HSDegree

#6:
  #1: No the plot does not look approximitly normal, because it does not follow a diagonal line, instead it rounds to the top.
  #2: This is skewed negative

#7:
install.packages ("pastecs")
library(pastecs)
stat.desc(community_su)
       