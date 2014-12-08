
setwd("C:/data/source/r/coursera/expl_a1")
library(data.table)
ds <- fread("household_power_consumption.txt")

ds1 <- ds[(ds$Date == "1/2/2007" | ds$Date == "2/2/2007"),]

png("plot1.png", width = 480, height = 480, units = "px")
hist(as.numeric(ds1$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
