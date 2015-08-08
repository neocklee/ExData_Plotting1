source("Project1.R")
# plotting PNG 1
png(file = "plot1.png", width = 480, height = 480)
hist(fhInput.df$Global_active_power, freq=TRUE, main="Global Active Power", plot = TRUE, col="red", xlab="Global Active Power (kilowatts)")
dev.off()
