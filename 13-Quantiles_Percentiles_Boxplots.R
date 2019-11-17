Define two variables that contains the female and male heights and find the length of each variable.
library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]
length(male)
length(female)

#Create two five row vectors showing the 10th, 30th, 50th, 70th, and 90th percentiles for the heights of each sex
female_percentiles <- quantile(female, seq(0.1, 0.9, 0.2))
male_percentiles <- quantile(male, seq(0.1, 0.9, 0.2))

#create a data frame called df with these two vectors as columns.
df <- data.frame(female=female_percentiles , male=male_percentiles)
df
