#call all the libraries
library(dplyr)
library(tidyr)
library(ggplot2)


dataset = suicide
head(dataset)
str(dataset)
summary(dataset)

#remove commas in column GDP_for_year
ireland$gdp_per_capita....=as.numeric(gsub(",","",dataset$gdp_for_year....))


#select Ireland suicide dataset
ireland=dataset[dataset$country=="Ireland",]
View(ireland)

#delete column country
ireland = ireland[-c(1)]
View(ireland)

#linear regression
y=ireland$suicides_no
x=ireland$age
fit=lm(y~x, data=ireland)
plot(fit)
summary(fit)
