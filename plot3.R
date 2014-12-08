
setwd("C:/data/source/r/coursera/expl_a1")
library(data.table)
ds <- fread("household_power_consumption.txt")

ds1 <- ds[(ds$Date == "1/2/2007" | ds$Date == "2/2/2007"),]

png("plot3.png", width = 480, height = 480, units = "px")
plot(strptime(paste(ds1$Date, ds1$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), as.numeric(ds1$Sub_metering_1), type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(strptime(paste(ds1$Date, ds1$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), as.numeric(ds1$Sub_metering_2), col = "red")
lines(strptime(paste(ds1$Date, ds1$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), as.numeric(ds1$Sub_metering_3), col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), col = c("black", "red", "blue"));
dev.off()