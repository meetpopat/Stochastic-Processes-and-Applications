###### Assignment I #######


##Question 1a

earthquake_Zt<-sample(0:1,50,replace=T,prob=c((0.6),0.4))
plot(earthquake_Zt)

##Question 1b

x <- seq(0, 50, by = 1)
first_interArrival_time<- pgeom(x, prob = 0.4)
plot(first_interArrival_time,type = "l")

##Question 1c 
No_of_earthquake <- 0:50
Probability_of_k_earthquakes <- dbinom(No_of_earthquake, size=50, prob=0.4)
plot(No_of_earthquake, Probability_of_k_earthquakes, type='l',col = 'red')
par(new = TRUE)
Probability_of_k_earthquakes2 <- dbinom(No_of_earthquake, size=50, prob=0.9)
plot(No_of_earthquake, Probability_of_k_earthquakes2, type='l', col = 'green')








