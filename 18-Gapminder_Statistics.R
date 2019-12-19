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
p <- tab %>% ggplot(aes(year, life_expectancy, color= country)) + geom_line()

#Use a single line of code to create a time series plot from 1960 to 2010 of life expectancy vs year for Cambodia.
gapminder %>% filter(year %in% c(1960:2010) & country=="Cambodia") %>% ggplot(aes(x= year, y= life_expectancy))+geom_line()

#create the dollars per day for African countries for the year 2010.
daydollars <- gapminder %>% filter(continent=="Africa", year=="2010", gdp!="NA")  %>%  mutate(dollars_per_day=gdp/population/365 ) 

#plot the smooth density plot using a log (base 2) x axis.
daydollars %>% ggplot(aes(x=dollars_per_day)) + geom_density() + scale_x_continuous(trans="log2")

#Create a smooth density plot of dollars per day for 1970 and 2010 using a log (base 2) scale for the x axis.
gapminder %>% filter(year %in% c("1970", "2010")& continent=="Africa"& gdp!="NA") %>% mutate(dollars_per_day=gdp/population/365) %>% ggplot(aes(x=dollars_per_day))+geom_density()+scale_x_continuous(trans="log2")+facet_grid(.~year)

#show a stacked density plot of each region in Africa.
gapminder %>% filter(year %in% c("1970", "2010")& continent=="Africa"& gdp!="NA") %>% mutate(dollars_per_day=gdp/population/365) %>% ggplot(aes(x=dollars_per_day , fill=region))+geom_density(bw=0.5, position = "stack" )+scale_x_continuous(trans="log2")+facet_grid(.~year)

#plotting infant mortality rates versus dollars per day for African countries.
gapminder_Africa_2010 <- gapminder %>% filter(year=="2010" & continent=="Africa" & gdp!="NA") %>% mutate(dollars_per_day=gdp/population/365) %>% ggplot(aes(x=dollars_per_day, y=infant_mortality, color=region))+geom_point()+scale_x_continuous(trans="log2")

gapminder %>% filter(year %in% c("1970", "2010")& continent=="Africa"& gdp!="NA" & year!="NA" & infant_mortality!="NA") %>% mutate(dollars_per_day=gdp/population/365) %>% ggplot(aes(x=dollars_per_day, y=infant_mortality, label=country, color=region))+geom_point()+ geom_text()+scale_x_continuous(trans="log2")+facet_grid(year~.)



