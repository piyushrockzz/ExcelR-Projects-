quakes <- datasets::quakes
head(quakes,10)
tail(quakes,10)
names(quakes)
quakes[,c(1,2)]
df<-quakes[,-6]
summary(quakes[,1])
quakes$depth
summary(quakes)
plot(quakes$depth)
plot(quakes$depth,quakes$stations, type="p")

plot(quakes$stations, 
     xlab = 'x', 
     ylab = 'y', 
     main = 'No of stations',
     col = 'red',
     type='b')
plot(quakes, col="red")

barplot(quakes$lat, 
        xlab = "x",
        ylab = "y",
        horiz = F,
        axes = T,
        col="green")

hist(quakes$long)
        
hist(quakes$long, 
     main = 'longitude',
     xlab = 'x.', 
     col='blue',
     border='red')
        
boxplot(quakes$depth,
        main="Boxplot",
        col="green",
        border='red',
        horizontal=T)
boxplot.stats(quakes$lat)$out

plot(density(quakes$depth))

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(quakes$lat)
plot(quakes$lat, airquality$Wind)
plot(quakes$lat, type= "l")
plot(quakes$lat, type= "l")
plot(quakes$lat, type= "l")
barplot(quakes$lat, main = 'latitudes data',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(quakes$lat.R)
boxplot(quakes$lat.R)
boxplot(quakes[,0:4], main='Multiple Box plots')

quakes
max(quakes$long)
min(quakes$lat)
mean(quakes$depth)
mean(quakes$lat,na.rm=T)
median(quakes$long)
median(quakes$stations,na.rm=T)

skewness(quakes$long)
kurtosis(quakes$lat)