rm(list = ls())
#Reading and Extracting the Data
#.....................................................................................#
dataProj <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
ext_data <- dataProj[dataProj$Date %in% c("1/2/2007", "2/2/2007"),]
#.....................................................................................#

#Ploting the Data
#..........................................................................................................................#
png("Plot1.png", width = 480, height = 480)
par(mar = c(4,4,2,2), mfrow = c(1,1))
var_plot <- as.numeric(ext_data$Global_active_power)
hist(var_plot, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
#..........................................................................................................................#