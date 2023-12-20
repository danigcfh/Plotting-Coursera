library(dplyr)

data <- read.csv("~/Documentos/1_Academia/PhD/Online class notes/Plotting-Coursera/household_power_consumption.txt", sep=";")
data$Date <-as.Date(data$Date, format = "%d/%m/%Y")  #turn date into date format
data <- filter(data, data$Date <= "2007-02-02"&data$Date >= "2007-02-01") #filter for the dates wanted
write.csv(data, file="data.csv")






