
data<-read.csv("data.csv")
data$datetime <- strptime(paste(data$Date, data$Time), format = "%Y-%m-%d %H:%M:%S")

png("plot4.png")
par(mfrow=c(2,2))
plot(y=data$Global_active_power, x=data$datetime, 
     type ="l", 
     ylab = "Global Active Power (kilowatts)",
     xaxt = "n", 
     xlab = NA)
axis.POSIXct(1, data$datetime, labels = c(NA,"Thu", NA, "Fri",NA, "Sat"))

plot(y=data$Voltage , x=data$datetime, 
     type ="l", 
     ylab = "Voltage",
     xaxt = "n", 
     xlab = "Datetime")
axis.POSIXct(1, data$datetime, labels = c(NA,"Thu", NA, "Fri",NA, "Sat"))

plot(x=data$datetime, 
     y=data$Sub_metering_1, 
     type ="l", 
     ylab = "Energy Sub Metering",
     xaxt = "n", 
     xlab = NA)
lines(x=data$datetime, 
      y=data$Sub_metering_2,
      col="red")
lines(x=data$datetime, 
      y=data$Sub_metering_3,
      col="blue")
axis.POSIXct(1, data$datetime, labels = c(NA,"Thu", NA, "Fri",NA, "Sat"))
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"), lty=1:2)

plot(y=data$Global_reactive_power , x=data$datetime, 
     type ="l", 
     ylab = "Global_reactive_power",
     xaxt = "n", 
     xlab = "Datetime")
axis.POSIXct(1, data$datetime, labels = c(NA,"Thu", NA, "Fri",NA, "Sat"))

dev.off()


