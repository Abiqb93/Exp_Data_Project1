rm(list = ls())
#Reading and Extracting the Data
#.....................................................................................#
dataProj <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
ext_data <- dataProj[dataProj$Date %in% c("1/2/2007", "2/2/2007"),]
#.....................................................................................#

DateTime <- strptime(paste(ext_data$Date, ext_data$Time), "%d/%m/%Y %H:%M:%S")

#Ploting the Data
#..........................................................................................................................#
png("Plot2.png", width = 480, height = 480)
par(mar = c(4,4,2,2), mfrow = c(1,1))
var_plot <- as.numeric(ext_data$Global_active_power)
plot(DateTime, var_plot, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
dev.off()
#..........................................................................................................................#