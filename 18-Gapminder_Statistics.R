library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

gapminder %>% filter(continent=="Africa"& year=="2012") %>% ggplot(aes( x=fertility, y= life_expectancy, color=region )) + geom_point()

#Create a table showing the country and region for the African countries
#that in 2012 had fertility rates of 3 or less and life expectancies of at least 70.

df <- gapminder %>% filter(continent=="Africa" & year=="2012" & fertility <= 3 & life_expectancy >= 70) %>% select(country, region)

#create a table with data for the years from 1960 to 2010 in Vietnam and the United States.
tab <- gapminder %>% filter (year %in% c(1960:2010) & country %in% c("Vietnam", "United States"))

#plot life expectancy vs year for Vietnam and the United States
p <- tab %>% ggplot(aes(x=year, y=life_expectancy, color= country)) + geom_line()

#Use a single line of code to create a time series plot from 1960 to 2010 of life expectancy vs year for Cambodia.
gapminder %>% filter(year %in% c(1960:2010) & country=="Cambodia") %>% ggplot(aes(x= year, y= life_expectancy))+geom_line()



