source("Project1.R")

# set up row and margin
par(mfrow=c(2,2), mar=c(4,4,0,1), oma=c(0,0,2,0))

# plotting PNG 4
with(fhInput.df, {
  plot(Global_active_power~DateTime, type="l", 
       ylab="Global Active Power", xlab="")
  plot(Voltage~DateTime, type="l", 
       ylab="Voltage", xlab="DateTime")
  plot(Sub_metering_1~DateTime, type="l", 
       ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         cex=0.75, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~DateTime, type="l", 
       ylab="Global Reactive Power",xlab="DateTime")
})

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
