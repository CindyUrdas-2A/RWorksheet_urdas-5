install.packages("ggplot2")
library(ggplot2)
library(ggplot2)

#1a.
Enrollment <-c(80,75,70,60)
barplot(Enrollment,
        main="BS in Computer Science",
        xlab="Course Year",
        ylab="SY2019-2020",
        names.arg = c("1st", "2nd", "3rd", "4th"),
        col="cyan",)

#1b.

Enrollment <-c(80,75,70,60)
barplot(Enrollment,
        main="Enrollment of BS Computer Science",
        xlab="Curriculum Year",
        ylab="number of students",
        names.arg = c("1st", "2nd", "3rd", "4th"),)


#2a.
percent_spent <- c(60,10,5,25)
barplot(percent_spent,names.arg = c("Food", "Electricity", "Savings", "Miscllaneous"))


#2b.	
percent_spent <- c(60,10,5,25)
pie(percent_spent)
percent <- pie(percent_spent,
             col = rainbow(length(percent_spent)),
             labels = c(60,10,5,25))

percent1 <- round(percent_spent/sum(percent_spent) * 100, 1)

percent1 <- paste(percent1,"%",sep = "")
pie(spent, main = "The monthly income of De Jesus family was spent on the following:

",col=rainbow(length(spent)),labels = percent1,cex=0.8)

legend(1, c("Food", "Electricity", "Savings", "Miscllaneous"),
       cex = 0.8,fill = rainbow((length(percent_spent))))


#3.	Open the mtcars dataset.

a<-mtcars$mpg
a

#3a.

a<-mtcars$mpg
a

a2 <-hist(a, xlab="Miles Per Gallon",
          main="Simple Histogram")


#3b.

b3 <-hist(a, breaks=12, col="red", xlab="Miles Per Gallon",
              main="Histogram of MPG")

#3c.	
a<-mtcars$mpg
c3 <-hist(a, breaks=12, col="red", xlab="Miles Per Gallon",
           main="Histogram with Normal Curve")
xfit<-seq(min(a),max(a),length=40)
yfit<-dnorm(xfit,mean=mean(a),sd=sd(a))
yfit <- yfit*diff(c3$mids[1:2])*length(n1)
lines(xfit, yfit, col="blue", lwd=2)

#4a.

library(datasets)
str(iris)

sub1 <- subset(iris, Species == "setosa")
sub2 <- subset(iris, Species == "versicolor")
sub3 <- subset(iris, Species == "virginica")

#4b.	
sub1 <- subset(iris, Species == "setosa")
setosa <- colMeans(sub1[sapply(sub1,is.numeric)])
setosa

sub2 <- subset(iris, Species == "versicolor")
versicolor <- colMeans(sub2[sapply(sub2,is.numeric)])
versicolor

sub3<- subset(iris, Species == "virginica")
virginica<- colMeans(sub3[sapply(sub3,is.numeric)])
virginica


#4c.
table <- rbind(setosa, versicolor, virginica)
table


#4d.
barplot(table, beside = TRUE,
        main = "Iris Data",
        xlab = "Characteristics",
        ylab = "Mean Scores",
        col = c("red","green","blue"))

