iris <-datasets::iris
head(iris,10)
tail(iris,10)
names(iris)
iris[c(1,2)]
df<-iris[-6]
summary (iris,1)
summary(iris[,1])
iris$Sepal.Length
summary(iris)
#plot Visualization
plot(iris$Species)
plot(iris$Sepal.Length)
plot(iris$Sepal.Width,iris$Sepal.Length, type ="p")
plot(iris$Sepal.Length,
     xlab = 'INDEX',
     ylab = 'Sepal length',
     main = 'FLOWER LENGTH',
     col  = 'blue',
     type = 'p')
#Plot the the entire data set
plot(iris, col="red")
plot (iris$Sepal.Length,iris$Petal.Length)

#horizontal barplot
barplot(iris$Sepal.Length, 
        main = 'Sepal length',
        ylab = 'INDEX', 
        col= 'blue',
        horiz = F,
        axes=T)
#Histogram
hist(iris$Petal.Length)

hist(iris$Petal.Length,
     main = 'Petal Length',
     xlab = 'length.', 
     col='blue',
     border='red')

boxplot(iris$Sepal.Length,
        main="Boxplot",
        col="green",
        border='red',
        horizontal=T)
boxplot.stats(iris$Sepal.length)$out #Null because no outliers 

mean(iris$Sepal.Length)
median(iris$Sepal.Length)
mode(iris$Sepal.Length)

skewness(iris$Sepal.Length)
kurtosis(iris$Sepal.Length)

plot(density(iris$Sepal.Length))