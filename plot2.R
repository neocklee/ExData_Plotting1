source("Project1.R")
# plotting PNG 2
png(file = "plot2.png")
plot(fhInput.df$Global_active_power~fhInput.df$DateTime, type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
