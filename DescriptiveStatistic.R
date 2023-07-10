df <- data.frame(Col1 = 1:3,Col2 = c("a","b","c"))

#dataset
airQuality <- airquality

#Top 10 rows and last 10 rows
head(airQuality,10)
tail(airQuality,10)
#selecting Columns
#airQuality[rows,Columns]
airQuality[,c(1,2)]

df <- airQuality[,-6]

#####summary of the univariate
summary(airQuality$Ozone)
##for all column
summary(airQuality)

#######Plot
plot(airQuality$Wind)
##type :- "p" for points , "l" for lines , "b" for both
plot(airQuality$Temp,airQuality$Wind,type = "p")
plot(airQuality$Wind,type = "l")

plot(airQuality$Wind,xlab = "Ozone Concentration",ylab = "No. of Instances",main = "Ozone level in NY city",col = "blue")
#plot(airQuality)

#Horizontal bar plot
barplot(airQuality$Ozone,xlab = "Ozone",main = "Ozone Concentration",horiz = FALSE,axes = TRUE,col = "green")

#Histogram
hist(airQuality$Temp)
hist(airQuality$Temp,main = "Solar radiation values in air",
     xlab = "Solar rad.",
     col = "red")

summary(airQuality$Temp)

#BOXplot
#main purpose of boxplot to find outliers
boxplot(airQuality$Wind,horizontal = TRUE)
boxplot.stats(airQuality$Wind)
boxplot.stats(airQuality$Wind)$out


#Multiple Boxplot
boxplot(airQuality[,1:4],
        main = "Multiple Boxplot",
        col = "red",
        horizontal = TRUE,
        las = 1)

#margin of the grid(mar)
#no. of rows and cols (mfrow)
#orientation of labels (labs = 0/1 , 1 = hoizontal)
#bty for borders

par(mfrow = c(3,3),mar = c(2,5,2,1),bty = "o", las = 0)
plot(airQuality$Ozone)
plot(airQuality$Wind,airQuality$Wind)
plot(airQuality$Ozone,type = "l")
plot(airQuality$Ozone,type = "l")
plot(airQuality$Ozone,type = "l")
barplot(airQuality$Ozone)
hist(airQuality$Solar.R)
boxplot(airQuality$Solar.R)
boxplot(airQuality[,0:4])

