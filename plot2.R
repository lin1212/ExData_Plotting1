X <- read.table("./household_power_consumption.txt", sep = ";", as.is = TRUE, na.strings = "?", header=TRUE)
X$Date <- as.Date(X$Date, "%d/%m/%Y")
data <- subset(X, Date == "2007-02-01" | Date == "2007-02-02")

png("plot2.png")
with(data,plot(strptime(paste(Date,Time),"%Y-%m-%d %H:%M:%S"),Global_active_power,type='l',xlab="",ylab = 'Global Active Power (kilowatts)')) 
dev.off()