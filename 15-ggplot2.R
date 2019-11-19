#loading ggplot and murders & heights datasets
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

#add labels abb to the points on a plot.
murders %>% ggplot(aes(population, total, label=abb) ) + geom_label()
 
#Rewrite the code above to make the labels blue
murders %>% ggplot(aes(population, total,label= abb)) + geom_label(color="blue")

#Rewrite the code above to make the label color correspond to the state's region
murders %>% ggplot(aes(population, total, label = abb, color=region)) + geom_label()

#Change both axes to be in the log scale
p <- murders %>% ggplot(aes(population, total, label = abb, color=region)) + geom_label()
p + scale_x_log10() + scale_y_log10()

# add the title "Gun murder data" to the plot
p + ggtitle("Gun murder data")
