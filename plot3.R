source("Project1.R")

# plotting PNG 3
with(fhInput.df, {
  plot(Sub_metering_1~DateTime, type="l", xlab="",
       ylab="Energy sub metering")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       cex=0.75,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
