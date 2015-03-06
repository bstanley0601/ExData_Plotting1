plot3 <- function(df) {

    png("plot3.png", width=480, height=480)
    
    ## Plot 3
    plot(df$Date.And.Time, df$Sub.metering.1, type="l", 
         xlab="", ylab="Energy sub metering")
    lines(df$Date.And.Time, df$Sub.metering.2, col="red")
    lines(df$Date.And.Time, df$Sub.metering.3, col="blue")
    legend("topright", col=c("black", "red", "blue"), 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
    
    ## Saves data to file
##    dev.copy(png, file = "plot2.png", height = 480, width = 480)
    dev.off()

}