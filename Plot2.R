source("ReadCleanData.R")
mydata <- ReadCleanData()
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(mydata$Time, mydata$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()