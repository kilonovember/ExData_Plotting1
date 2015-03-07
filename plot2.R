EDAProject1.2 <- function(){
  png("plot2.png", width = 480, height = 480, units = "px")
  Project1DataSet <- read.csv("~/datascience/classwork/exploratory-data-analysis/Project1DataSet.txt", sep=";")
  plot(as.POSIXlt(paste(as.Date(Project1DataSet$Date, '%d/%m/%Y'),Project1DataSet$Time)), Project1DataSet$Global_active_power, typ="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
}