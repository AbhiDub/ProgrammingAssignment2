#getting data
d <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
cleanD <- d[d$Date %in% c("1/2/2007","2/2/2007") ,]

#generating plot

datetime <- strptime(paste(cleanD$Date, cleanD$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalReActivePower <- as.numeric(cleanD$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalReActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()