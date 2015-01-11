data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,header=TRUE)
index<-which(data$Date=="1/2/2007"|data$Date=="2/2/2007")
subset_data<-data[index,]

png("plot1.png",width=480,height=480)
temp<-as.numeric(subset_data$Global_active_power)
hist(temp,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()

