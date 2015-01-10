X <- read.table("./household_power_consumption.txt", sep = ";", as.is = TRUE, na.strings = "?", header=TRUE)
X$Date <- as.Date(X$Date, "%d/%m/%Y")
data <- subset(X, Date == "2007-02-01" | Date == "2007-02-02")

png("plot1.png")
with(data, hist(Global_active_power, col = "red", xlab = "Global Active Power(kilowatts)", main = "Global Active Power"))
dev.off()