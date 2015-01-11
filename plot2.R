data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,header=TRUE)
index<-which(data$Date=="1/2/2007"|data$Date=="2/2/2007")
subset_data<-data[index,]

png("plot2.png",width=480,height=480)
DATE<-as.Date(subset_data$Date,"%d/%m/%Y")
x<-paste(DATE,subset_data$Time)
x<-as.POSIXct(x)
y<-subset_data$Global_active_power
plot(x,y,type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()
