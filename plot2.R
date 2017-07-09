# define file
myFile <- "household_power_consumption.txt"

# Load file & subset
df <- read.table(myFile,header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
df <- subset(df, Date %in% c("1/2/2007","2/2/2007"))

# Merge Date & Time and coerce as Date Time 
df$DateTime <- strptime(paste(df$Date,df$Time), format="%d/%m/%Y %H:%M:%S")

# Open device
png(filename = "plot2.png", width = 480, height = 480, units = "px")

# Create plot2
with(df, plot(df$DateTime, df$Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatts)", type = "l"))

# Device off
dev.off()