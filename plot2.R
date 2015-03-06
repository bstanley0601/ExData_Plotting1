plot2 <- function(df) {

    png("plot2.png", width=480, height=480)
    
    ## Plot 2
    plot(df$Global.active.power~df$Date.And.Time, 
         type = "l", 
         ylab = "Global Active Power (kilowatts)", 
         xlab = "")
    
    ## Saves data to file
##    dev.copy(png, file = "plot2.png", height = 480, width = 480)
    dev.off()

}