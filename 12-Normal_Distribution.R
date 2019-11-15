# What proportion of the data is between 69 and 72 inches (taller than 69 but shorter or equal to 72)? 
# A proportion is between 0 and 1.
library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
mean(x>69 & x<= 72)

#Use the normal approximation to estimate the proportion
#the proportion of the data that is between 69 and 72 inches.
avg <- mean(x)
stdev <- sd(x)
pnorm(72,avg, stdev) - pnorm(69,avg, stdev)
