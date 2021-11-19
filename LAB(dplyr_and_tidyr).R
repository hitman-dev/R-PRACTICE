#1. Consider the dataset survey.csv from datasets folder. Using the appropriate functions 
#in dplyr package create the following data objects:
  

setwd("E:/Torrent Downloads/CDAC/R Programming/Datasets")
library(tidyverse)
df <- read.csv("survey.csv")
head(df)
tbl_surv <- as_tibble(df)
MaleNonSmokers <- filter(tbl_surv, Sex == "Male" & Smoke == "Never")
head(MaleNonSmokers)

tbl_surv %>%
  select(Sex, Exer, Smoke, Pulse) %>%
  filter(Pulse > 80) -> PulseGT80

head(PulseGT80)


tbl_surv %>%
  mutate(Ratio_Hnd = Wr.Hnd / NW.Hnd) %>%
  select(Ratio_Hnd,Clap,Age) -> RtHand
head(RtHand)

tbl_surv %>%
  summarise(mean=mean(Age,na.rm=T),
            sd=sd(Age,na.rm=T)) -> DescStatsd

head(DescStatsd)

tbl_surv %>%
  group_by(Sex)  %>%
  summarise(mean=mean(Age,na.rm=T),
            sd=sd(Age,na.rm=T)) -> DescGrp 

head(DescGrp)

#2. Given the files Items.csv, Orders.csv and Ord_Details.csv in the folder datasets, 
#merge them with appropriate keys to form a combined data.

Items <- read.csv("Items.csv")
Orders <- read.csv("orders.csv")
Ord_Details <- read.csv("Ord_Details.csv")

#OR

ord_all <- Orders%>%
  full_join(Ord_Details,by="Order.ID") %>%
  full_join(Items,by ="Item.ID")

#OR

data2 <- full_join(Orders, full_join(Items, Ord_Details))
head(data2)

#3. Combine the data in the files Courses.csv and CourseSchedule.csv with appropriate keys

Courses <- read.csv("Courses.csv")
CourseSchedule <- read.csv("CourseSchedule.csv")
course_join <- full_join(Courses,CourseSchedule,by=c("CourseID"="CourseCode"))


  
#4. Consider a dataset comb1 in the datasets folder. Reshape the dataset to the following 
#structure:

comb <- read.csv("comb1.csv")
head(comb)
m1comb <- comb %>% gather(-District,key = "ItemType",value = "qty")
head(m1comb)
m2comb <- comb %>% pivot_longer(-District,names_to = "ItemType",values_to = "qty")
head(m2comb)


#5. Consider the dataset comb2 in the datasets folder. PatientID in the data is to be 
#broken up into the format projectID-SiteID/PatientNumber.
#Create the dataset with the following structure:

comb2df <- read.csv("comb2.csv")
head(comb2df)
sep <- comb2df %>% separate(PatientID,into = c("projectID","Sd"),sep = "-",convert = TRUE)
head(sep)
sep2 <- sep %>% separate(Sd,into = c("SiteID","PatientNumbe"),sep = "/",convert = TRUE)
head(sep2)
#OR

comb2df %>%
  separate(PatientID, into = c("projectID", "SiteID", "PatientNumber"), sep = "[-,/]", convert = TRUE)
