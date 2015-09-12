
# Read data
nn <- read.csv("data/household_power_consumption.txt", sep=";", nrow=10)
names <- names(nn)
data <- read.csv("data/household_power_consumption.txt", sep=";", nrow=2880, skip=66636)
names(data) <- names

#data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%Y-%m-%d %H:%M:%S")
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# Plot 2

plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", width = 480, height = 480)
dev.off()

