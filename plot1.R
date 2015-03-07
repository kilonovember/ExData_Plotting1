EDAProject1.1 <- function () {
  Project1DataSet <- read.csv("~/datascience/classwork/exploratory-data-analysis/Project1DataSet.txt", sep=";")
  png("plot1.png", width = 480, height = 480, units = "px")
  hist(Project1DataSet$Global_active_power, col="red", main=paste("Global Active Power"), xlab="Global Active Power (kilowatts)")
  dev.off()
}
