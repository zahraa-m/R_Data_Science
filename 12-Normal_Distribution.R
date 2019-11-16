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

#Use normal approximation to estimate the proportion of heights between 79 and 81
exact <- mean(x > 79 & x <= 81)
approx <- pnorm(81, mean(x), sd(x))-pnorm(79, mean(x), sd(x))
#how many times bigger the actual proportion is compared to the approximation.
exact/approx

#Assume that the distribution of adult men in the world as normally distributed
#with an average of 69 inches and a standard deviation of 3 inches.
# use pnorm to calculate the proportion over 7 feet (7*12 inches)
1 - pnorm(7*12, 69, 3)

#there are about 1 billion(10^9) men between the ages of 18 and 40 in the world.
#use the normal distribution to estimate how many of these 1 billion men are at least seven feet tall?
p<- 1-pnorm(7*12, 69, 3)
round(p*10^9)

