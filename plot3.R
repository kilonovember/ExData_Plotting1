EDAProject1.3 <- function(){
  Project1DataSet <- read.csv("~/datascience/classwork/exploratory-data-analysis/Project1DataSet.txt", sep=";")
  png("plot3.png", width = 480, height = 480, units = "px")
  x.axis <- as.POSIXlt(paste(as.Date(Project1DataSet$Date, '%d/%m/%Y'),Project1DataSet$Time))
  plot(x.axis, Project1DataSet$Sub_metering_1, typ="l", col="black", xlab="", ylab="Energy sub metering")
  lines(x.axis, Project1DataSet$Sub_metering_2, col="red")
  lines(x.axis, Project1DataSet$Sub_metering_3, col="blue")
  legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  dev.off()
}