#1. Given Orders.csv file in the folder datasets. Import the file into R and generate the
#following outputs:
#a. Display the meta-data of its data frame object 

setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
orders <- read.csv("Orders.csv",stringsAsFactors = TRUE)
str(orders)

#b. Descriptive Statistics:

summary(orders)



#2. Create a function which accepts a number as temperature in degrees Fahrenheit and 
#returns the temperature in Celsius

f_to_c <- function(f) {
  c <- ((f - 32) * (5 / 9))
  return(c)
}
f_to_c(52)

#3. Create a function which accepts a numeric variable(input)and outputs its coefficient 
#of variation with
#formula: (SD / mean) *100

coeff <- function(input){
  mean=mean(input,na.rm=T)
  sd=sd(input,na.rm=T)
  res=(sd/mean)*100
  return(res)
}
coeff(c(10,11,12,13))

)#4. Create a function which can impute the missing values in a numeric vector by mean. 
#That means, the function should take a numeric vector as an argument and return a numeric
#vector in which NA values will be found imputed

imputemean <- function(g){
 g[is.na(g)] <- mean(g,na.rm=T)
 return(g)
}

g <- (c(10,11,12,NA,13,NA))
imputemean(g)

#or

g <- c(9.34, 8.24, NA, 1.345, 0.56, 0, NA, 7.89)
imputemean <- function(input) {
  input[which(is.na(input))] <- mean(input, na.rm = T)
  input
}
imputemean(g)

  