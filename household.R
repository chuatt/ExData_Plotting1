# Calculate how much memory the data will require
# Using the formula, Memory required= No. of Columns * No. of Rows * 8 bytes/numeric
# Memory required = 2,075,259 * 9 * 8 = 149 Mb

# define file
myFile <- "household_power_consumption.txt"

# Load file & subset
df <- read.table(myFile,header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
df <- subset(df, Date %in% c("1/2/2007","2/2/2007"))

# Merge Date & Time and coerce as Date Time 
df$DateTime <- strptime(paste(df$Date,df$Time), format="%d/%m/%Y %H:%M:%S")