setwd("F:/holm/Coursera/Johns_hopkings_datasci/4-explr")
# The first step, load data of Date only to reduce the mem usage
colidx = c(1)
class <- rep("NULL", 9)
class[colidx] <- "character"
names <- 1:9
names[colidx] <-c("Date")
raw_dat <- read.csv("peer1/household_power_consumption.txt", colClasses = class, col.names = names, sep = ";", header=T)

# locate the skip line number previous the first record in 1/2/2007
ln_1 <- which(raw_dat == "1/2/2007")[1] - 1
# locate the line number previous the first record in 3/2/2007 to computer the nrows
ln_2 <- which(raw_dat == "3/2/2007")[1] - 1

# The second step, load data of the dates 2007-02-01 and 2007-02-02 for the assignment request
colidx = c(1:9)
class <- rep("numeric", 9)
class[1:2] <- "character"

names <- 1:9
names[colidx] <-c("Date", "Time", "Global_active_power",
                  "Global_reactive_power", "Voltage",
                  "Global_intensity", "Sub_metering_1",
                  "Sub_metering_2", "Sub_metering_3")

rm(raw_dat)
raw_dat <- read.csv("peer1/household_power_consumption.txt", 
                    colClasses = class, col.names = names,
                    sep = ";", header=T, skip = ln_1, nrows=(ln_2 - ln_1),
                    na.strings="?")

raw_dat[,1] <- as.Date(raw_dat[,1], format= "%d/%m/%Y")

# plot 1
png("peer1/plot1.png")
par(cra = c(480,480))
hist(raw_dat$Global_active_power, col="red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()

