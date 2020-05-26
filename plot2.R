# Plotting Code for plot2
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()