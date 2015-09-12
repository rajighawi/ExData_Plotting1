
# Read data
nn <- read.csv("data/household_power_consumption.txt", sep=";", nrow=10)
names <- names(nn)
data <- read.csv("data/household_power_consumption.txt", sep=";", nrow=2880, skip=66636)
names(data) <- names

# Plot 1

hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()

