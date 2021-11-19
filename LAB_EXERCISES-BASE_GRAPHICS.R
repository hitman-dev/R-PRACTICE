#1. Use the dataset SingaporeAuto.csv and display the following graphs:

setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
#a)
SAdf <- read.csv("SingaporeAuto.csv")
head(SAdf)
boxplot(SAdf$Exp_weights)
boxplot(SAdf$Exp_weights,col = c("hotpink"),main="Weights")

#b)
boxplot(SAdf$Exp_weights ~ SAdf$VehicleType,
        col = c(6,3,23,34,45,67,89,100,123,124),main="Weights by Vehicle Type")


#2. Use the data frame cars2.csv and display the following graphs:

#a)
cars <- read.csv("cars2.csv",stringsAsFactors = TRUE)
cars2 <- as_tibble(cars)
head(cars)
plot(cars$speed,cars$dist,xlab="speed",ylab="Distance",pch=17,col="hotpink")

colours()# to get all colours and their codes

