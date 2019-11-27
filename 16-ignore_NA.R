#how to ignore NA in dataset
library(dslabs)
data(na_example)
mean(na_example)
sd(na_example)

#skip any NA
mean(na_example, na.rm=TRUE)
sd(na_example, na.rm=TRUE)

