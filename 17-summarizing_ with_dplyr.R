#data from the survey collected by the United States National Center for Health Statistics (NCHS).
#This center has conducted a series of health and nutrition surveys since the 1960’s.

library(dplyr)

#loading NCHS data
library(NHANES)
data(NHANES)

#Filter the dataset so that only 20-29 year old females are included.
tab <- NHANES %>% filter(Gender=="female" & AgeDecade==" 20-29") 
head(tab)

#determine the average and standard deviation of systolic blood pressure
ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female") %>% summarise(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE))
