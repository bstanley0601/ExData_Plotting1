plot4 <- function(df) {
    png("plot4.png", width=480, height=480)
    
    # Plot the graph
    par(mfrow=c(2, 2))
    
    ## Upper Left
    plot(df$Global.active.power~df$Date.And.Time, 
         type = "l", 
         ylab = "Global Active Power", 
         xlab = "")

    ## Upper Right
    plot(df$Date.And.Time, df$Voltage, 
         type="l", 
         xlab="datetime", 
         ylab="voltage")
    
    ## Lower Left
    plot(df$Date.And.Time, df$Sub.metering.1, type="l", 
         xlab="", ylab="Energy sub metering")
    lines(df$Date.And.Time, df$Sub.metering.2, col="red")
    lines(df$Date.And.Time, df$Sub.metering.3, col="blue")
    legend("topright", col=c("black", "red", "blue"), 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
    
    ## Lower Right
    plot(df$Date.And.Time, df$Global.reactive.power, 
         type="l", 
         xlab="datetime", 
         ylab="Global_reactive_power")
    
    
    dev.off()

}