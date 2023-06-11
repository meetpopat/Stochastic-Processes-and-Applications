###### Assignment I #######


##Question 2a
arrivals <- 0:100
y_pois = dpois(arrivals,10)
plot(arrivals,y_pois,type = "l",col = 'blue')


##Question 2b
arrivals <- 0:100
y_pois = dpois(arrivals,10)
plot(arrivals,y_pois,type = "l",col = 'red')

par(new = TRUE)

y_ppois2 = dpois(arrivals,20)
plot(arrivals,y_ppois2,type = "l", col = 'green')

##Question 2c

lambda <- 5+10
arrivals <- 0:100
y_pois =rpois(arrivals,lambda)
plot(arrivals,cumsum(y_pois),type = "l")

##inter_arrival time
lambda <- 5+10
interArrival_time <- dexp(seq(0,t,1),lambda)
plot(interArrival_time,type = 'l',col = 'blue')

##CDF of the inter-arrival time
lambda <- 5+10
CDF_interArrival <- pexp(seq(0,t,1),lambda)
plot(CDF_interArrival,type = 'l',col = 'blue')