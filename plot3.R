data<-read.csv("data.csv")
data$datetime <- strptime(paste(data$Date, data$Time), format = "%Y-%m-%d %H:%M:%S")

png("plot3.png")
plot(x=data$datetime, 
     y=data$Sub_metering_1, 
     type ="l", 
     ylab = "Energy Sub Metering",
     xaxt = "n", 
     xlab = "Date")
lines(x=data$datetime, 
      y=data$Sub_metering_2,
      col="red")
lines(x=data$datetime, 
      y=data$Sub_metering_3,
      col="blue")
axis.POSIXct(1, data$datetime, labels = c(NA,"Thu", NA, "Fri",NA, "Sat"))
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"), lty=1:2)
dev.off()



