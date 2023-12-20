data<-read.csv("data.csv")
head(data)

png("plot1.png")
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()
