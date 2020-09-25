data <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Global_ative_power <- as.numeric(data$Global_active_power)
i_data <- data[(data$Date == "2007-02-01" | data$Date == "2007-02-02"),]
png("plot1.png", width=480, height=480)
hist(i_data$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()