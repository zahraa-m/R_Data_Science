#install dslabs to get murders dataset
install.packages("dslabs")

#call dslabs and get murders dataset
library(dslabs)
data("murders")

#show the structure of murders dataset
str(murders) 

#show 10 raw samples from murders dataset
head(murders) 

#show to us the names of columns in the dataset
names(murders)

#access to a specific column (population)
murders$population

#length of the column
pop <- murders$population
length(pop)
