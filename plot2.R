
setwd("C:/data/source/r/coursera/expl_a1")
library(data.table)
ds <- fread("household_power_consumption.txt")

ds1 <- ds[(ds$Date == "1/2/2007" | ds$Date == "2/2/2007"),]

png("plot2.png", width = 480, height = 480, units = "px")
plot(strptime(paste(ds1$Date, ds1$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), as.numeric(ds1$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()