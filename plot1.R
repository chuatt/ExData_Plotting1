# Open device
png(filename = "plot1.png", width = 480, height = 480, units = "px")

# Create plot1
with(df, hist(df$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col="red", ylim=c(0,1300)))

# Device off
dev.off()