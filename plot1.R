epc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.string = "?")
epc <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(epc$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()