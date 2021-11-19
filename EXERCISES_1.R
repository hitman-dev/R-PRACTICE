#1. Subset the dataset Orders in the folder datasets to create a dataset with only "Online"
#payment.

setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
orders <- read.csv("Orders.csv")
online_p <- subset(orders,Payment.Terms == "Online")
online_p

#2. Consider the dataset mtcars. Output (write) the data in this data set into a csv file 
#and name the csv file as mtcars.csv.

data("mtcars")
head(mtcars)
write.csv(mtcars, "mtcar1s.csv")

#3. Consider the dataset diamonds in the folder datasets. Subset the dataset with criteria 
#as cut=Premium and color=J

diamond <- read.csv2("Diamonds.csv")
head(diamond)
d1 <- subset(diamond,cut=="Premium" & color=="J")
head(d1)


#Q4.Consider the dataset diamonds in the folder datasets. Create a data frame object which stores just variables
#carat, color, depth and price

d2 <-subset(diamond, select = c(carat, color, depth, price))
head(d2)


#Q5.Consider the dataset mtcars. Choose the 2nd, 18th, 30th and 12th rows

mtcars[c(2,18,30,12) , ]
