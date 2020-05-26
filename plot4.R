# Plotting Code for plot4
par(mfrow=c(2,2))
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l",xlab= "", ylab= "Global Active Power")
plot(house_a_data$Voltage ~ house_a_data$DateTime, type="l",xlab= "datetime", ylab = "Voltage")

with(house_a_data, plot(Sub_metering_1 ~ DateTime, type="l", xlab="", ylab="Energy sub metering"))
lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.3)

plot(house_a_data$Global_reactive_power ~ house_a_data$DateTime, type="l", xlab="datetime", ylab = "Global eactive power")
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()