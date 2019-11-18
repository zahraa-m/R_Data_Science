library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
data(murders)
p <- ggplot(murders)

#or, if we load dplyr, we can use the pipe:
p <- murders %>% ggplot()
class(p)

#create a scatter plot
murders %>% ggplot(aes(x = population, y = total )) + geom_point()

