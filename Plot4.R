source("ReadCleanData.R")
mydata <- ReadCleanData()
png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))
#1
plot(mydata$Time, mydata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
#2
plot(mydata$Time, mydata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
#3
plot(mydata$Time, mydata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(mydata$Time, mydata$Sub_metering_2, col = "red")
lines(mydata$Time, mydata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n")
#4
plot(mydata$Time, mydata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()