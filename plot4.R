EDAProject1.4 <- function(){
  Project1DataSet <- read.csv("~/datascience/classwork/exploratory-data-analysis/Project1DataSet.txt", sep=";")
  png("plot4.png", width = 480, height = 480, units = "px")
  x.axis <- as.POSIXlt(paste(as.Date(Project1DataSet$Date, '%d/%m/%Y'),Project1DataSet$Time))
  par(mfrow=c(2,2))
  # top left
  plot(as.POSIXlt(paste(as.Date(Project1DataSet$Date, '%d/%m/%Y'),Project1DataSet$Time)), Project1DataSet$Global_active_power, typ="l", ylab="Global Active Power (kilowatts)", xlab="")
  #top right
  plot(as.POSIXlt(paste(as.Date(Project1DataSet$Date, '%d/%m/%Y'),Project1DataSet$Time)), Project1DataSet$Voltage, typ="l", ylab="Voltage", xlab="datetime")
  #bottom left
  plot(x.axis, Project1DataSet$Sub_metering_1, typ="l", col="black", xlab="", ylab="Energy sub metering")
  lines(x.axis, Project1DataSet$Sub_metering_2, col="red")
  lines(x.axis, Project1DataSet$Sub_metering_3, col="blue")
  legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  # bottom right
  plot(as.POSIXlt(paste(as.Date(Project1DataSet$Date, '%d/%m/%Y'),Project1DataSet$Time)), Project1DataSet$Global_reactive_power, typ="l", ylab="Global_reactive_power", xlab="datetime")
  #
  dev.off()
}