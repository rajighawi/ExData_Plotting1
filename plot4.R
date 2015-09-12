
# Read data
nn <- read.csv("data/household_power_consumption.txt", sep=";", nrow=10)
names <- names(nn)
data <- read.csv("data/household_power_consumption.txt", sep=";", nrow=2880, skip=66636)
names(data) <- names


data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# Plot 4

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

with(data, plot(DateTime, Global_active_power, col = "black", type = "l", 
        ylab="Global Active Power", xlab=''))

with(data, plot(DateTime, Voltage, col = "black", type = "l", xlab='datetime'))

with(data, plot(DateTime, Sub_metering_1, main = "", col = "black", type = "l", 
                ylab="Energy sub metering", xlab=''))
with(data, lines(DateTime, Sub_metering_2, col = "red", type = "l"))
with(data, lines(DateTime, Sub_metering_3, col = "blue", type = "l"))
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

with(data, plot(DateTime, Global_reactive_power, col = "black", type = "l", xlab='datetime'))

dev.copy(png, file="plot4.png", width = 480, height = 480)
dev.off()

