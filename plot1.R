plot1 <- function(df) {
    
    png("plot1.png", width=480, height=480)
    
    ## Plot 1
    hist(df$Global.active.power, 
         main = "Global Active Power", 
         xlab = "Global Active Power (kilowatts)", 
         ylab = "Frequency", 
         col = "Red")
    
    dev.off()
}