# define file
myFile <- "household_power_consumption.txt"

# Load file & subset
df <- read.table(myFile,header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
df <- subset(df, Date %in% c("1/2/2007","2/2/2007"))

# Merge Date & Time and coerce as Date Time 
df$DateTime <- strptime(paste(df$Date,df$Time), format="%d/%m/%Y %H:%M:%S")

# Open device
png(filename = "plot3.png", width = 480, height = 480, units="px")

# Create plot3
with(df, plot(df$DateTime, df$Sub_metering_1, xlab = " ", ylab = "Engery sub metering", type = "l"))
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)

# Device off
dev.off()
