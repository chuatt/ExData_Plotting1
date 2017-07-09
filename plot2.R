# Open device
png(filename = "plot2.png", width = 480, height = 480, units = "px")

# Create plot2
with(df, plot(df$DateTime, df$Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatts)", type = "l"))

# Device off
dev.off()