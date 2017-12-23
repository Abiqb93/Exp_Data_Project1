rm(list = ls())
#Reading and Extracting the Data
#.....................................................................................#
dataProj <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
ext_data <- dataProj[dataProj$Date %in% c("1/2/2007", "2/2/2007"),]
#.....................................................................................#

DateTime <- strptime(paste(ext_data$Date, ext_data$Time), "%d/%m/%Y %H:%M:%S")

#Ploting the Data
#..........................................................................................................................#
png("Plot3.png", width = 480, height = 480)
par(mar = c(4,4,2,2), mfrow = c(1,1))
plot(DateTime, as.numeric(ext_data$Sub_metering_1), type = "l", xlab = " ", ylab = "Energy Sub Metering")
lines(DateTime, as.numeric(ext_data$Sub_metering_2),col = "red")
lines(DateTime, as.numeric(ext_data$Sub_metering_3), col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black","red","blue"))
dev.off()
#..........................................................................................................................#