#extract the variable names from a dataset 
library(dslabs)
data(heights)
names(heights)

#determine how many unique heights were reported
x <- heights$height
length(unique(x))
