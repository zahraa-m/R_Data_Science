#extract the variable names from a dataset 
library(dslabs)
data(heights)
names(heights)

#determine how many unique heights were reported
x <- heights$height
length(unique(x))

#compute the frequencies of each unique height value
tab <- table(x)

#how many values are reported only once
sum(tab==1)

