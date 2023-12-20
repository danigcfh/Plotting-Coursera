data<-read.csv("data.csv")

data$datetime <- strptime(paste(data$Date, data$Time), format = "%Y-%m-%d %H:%M:%S")

png("plot2.png")
plot(y=data$Global_active_power, x=data$datetime, 
     type ="l", 
     ylab = "Global Active Power (kilowatts)",
     xaxt = "n", 
     xlab = "Date")
axis.POSIXct(1, data$datetime, labels = c(NA,"Thu", NA, "Fri",NA, "Sat"))
dev.off()


