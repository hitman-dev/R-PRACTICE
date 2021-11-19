#1.	The Puromycin data frame has 23 rows and 3 columns of the reaction velocity versus 
#substrate concentration in an enzymatic reaction involving untreated cells or cells
#treated with Puromycin.
#conc : a numeric vector of substrate concentrations (ppm)
#rate : a numeric vector of instantaneous reaction rates (counts/min/min)
#Is there any mean population difference in values of rate and conc for two different treatments?

data(Puromycin)
head(Puromycin)

trtd <- subset(Puromycin,state == "treated")
untrtd <- subset(Puromycin,state == "untreated")
 
#conc, variance test
 var.test(trtd$conc,untrtd$conc)
 t.test(trtd$conc,untrtd$conc,var.equal = T)

#rate ,variance test
 var.test(trtd$rate,untrtd$rate)
 t.test(trtd$rate,untrtd$rate,var.equal = T)
  

#2.	The soporific effect of drugs A and B was studied on ten patients separately. 
#The results were assessed for the additional hours of sleep produced by the drugs. 
#Compare soporific effects of the drugs from the data in file Soporific.csv
 
soporific <- read.csv("E:/Torrent Downloads/CDAC/R Programming/R_D7/5. Inferential Statistics/Exercises/soporific.csv")
head(soporific)
var.test(soporific$Drug.A,soporific$Drug.B)
t.test(soporific$Drug.A,soporific$Drug.B,var.equal = T)


rheum <- read.csv("E:/Torrent Downloads/CDAC/R Programming/R_D7/5. Inferential Statistics/Exercises/Rheumatic.csv")
head(rheum)
t.test(rheum$Before,rheum$After, alternative = "t" ,paired = T)
