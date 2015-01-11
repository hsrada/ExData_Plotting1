data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,header=TRUE)
index<-which(data$Date=="1/2/2007"|data$Date=="2/2/2007")
subset_data<-data[index,]

png("plot4.png",width=480,height=480)
DATE<-as.Date(subset_data$Date,"%d/%m/%Y")
x<-paste(DATE,subset_data$Time)
x<-as.POSIXct(x)

par(mfrow=c(2,2))
with(subset_data,{
plot(x,Global_active_power,type="l",ylab="Global Active Power",xlab="")
plot(x,Voltage,ylab="Voltage",xlab="datetime",type="l")
plot(x,Sub_metering_1,col="black",type="l",ylab="Energy sub metering",xlab="")
lines(x,subset_data$Sub_metering_2,col="red")
lines(x,subset_data$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),lty=1,lwd=3,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(x,Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")
})

dev.off()
