
# Read data
nn <- read.csv("data/household_power_consumption.txt", sep=";", nrow=10)
names <- names(nn)
data <- read.csv("data/household_power_consumption.txt", sep=";", nrow=2880, skip=66636)
names(data) <- names


data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

# Plot 3


with(data, plot(DateTime, Sub_metering_1, main = "", col = "black", type = "l", 
        ylab="Energy sub metering", xlab=''))
with(data, lines(DateTime, Sub_metering_2, col = "red", type = "l"))
with(data, lines(DateTime, Sub_metering_3, col = "blue", type = "l"))
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.copy(png, file="plot3.png", width = 480, height = 480)
dev.off()

