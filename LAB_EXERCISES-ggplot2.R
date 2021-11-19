#1. Consider the dataset AutoCollision in the package insuranceData. Generate the following plot 

setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
library(ggplot2)
AutoCdf <- read.csv("AutoCollision.csv",stringsAsFactors = T)
head(AutoCdf)
ggplot(AutoCdf,aes(Severity,Claim_Count,color=Vehicle_Use))+geom_point()+
  labs(title = "Severity by Claim Count")+
  labs(x = "Severity" ,y = "Claim Count")+
  theme(plot.title = element_text(hjust = 0.5))

#2. Consider the dataset AutoCollision in the package insuranceData. Generate the following 
#plot using functionggplot()
  
ggplot(AutoCdf, aes(Vehicle_Use,Claim_Count))+
  geom_boxplot(fill=c("red","green","blue","hotpink"))+
  labs(title = "Claim Count by Vehicle Type")+
  labs(x = "Vehicle Type" ,y = "Claim Count")+
  theme(plot.title = element_text(hjust = 0.5))

#3. Consider the dataset Ornstein in package car which contains data on Canadian firms.
#Generate the following plot using function ggplot

Orndf <- read.csv("Ornstein.csv",stringsAsFactors = T)
head(Orndf)
ggplot(Orndf, aes(nation,fill=sector))+
  geom_bar(position = position_stack(reverse = TRUE))+
  labs(title = "Firm by Nation across Sectors") +
  labs(x = "Nation", y = "Count")

#4. Consider the dataset Ornstein in package car which contains data on Canadian firms. 
#Generate the following plot using function ggplot()

ggplot(Orndf,aes(assets,interlocks,colour=sector))+
  labs(x='Assets',y='Interlocks', title='Assets by Interlocks')+
  geom_point()+facet_grid(.~nation)+
  theme(plot.title = element_text(hjust=0.5))

#5. Consider dataset mtcars of the package datasets. Generate the following plot 
#using function ggplot()

mtcdf<-read.csv('mtcars.csv')
head(mtcdf)
mtcdf$gear<-factor(mtcdf$gear)
ggplot(mtcdf,aes(disp,mpg,color=gear))+geom_point()+
  labs(x='Displacement',y='Miles Per Gallon',title='Displacement by MPG')+
  theme(plot.title = element_text(hjust=0.5))


cars2018 <- read.csv("cars2018.csv",stringsAsFactors = TRUE)
head(cars2018)

     