library(dplyr)
library(tidyverse)
confirmed<-read_csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv')
confirmed<-confirmed %>% filter(iso2=='US')%>%
  select(seq(12,ncol(confirmed)))
confirmed<-apply(confirmed,2,sum)
deaths<-read_csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv')
deaths<-deaths %>% filter(iso2=='US')%>%
  select(seq(13,ncol(deaths)))
deaths<-apply(deaths,2,sum)
recover<-read_csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv')
recover<-recover %>% filter(`Country/Region`=='US')%>%
  select(seq(5,ncol(recover)))
recover<-apply(recover,2,sum)
data<-cbind(confirmed,deaths,recover)
d<-as.Date(rownames(data),format='%m/%d/%y')
data<-cbind(data,d)
colnames(data)<-c('C','D','R','date')
data<-as_tibble(data)
data<-data %>% mutate(I=C-D-R)
data['date']=as.Date(data$date,origin='1970-01-01')
data<-data%>%select('C','I','D','R','date')
write.csv(data,'US-Coronavirus-data.csv')

