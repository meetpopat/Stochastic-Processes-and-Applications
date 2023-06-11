# Assignment 2
# Name - Meet Popat
# Roll no - 2020320

# Q1 part A Simulating Markov's chain for 50 iteration

P <- matrix(c(0.3,0.5,0.7,0.5),nrow=2,ncol=2)
chain.states <- matrix(ncol = 5, nrow = 50)
for(i in seq_len(5)){
  states <- 2 #states 
  states <- 50
  states[1] <- 1
  
  for(x in 2:50) {
    p  <- P[states[x-1], ]
    states[x] <- which(rmultinom(1, 1, p) == 1)
  }
  chain.states[,i] <- states
}
matplot(chain.states, type='l', lty=1, col=1:5,  ylab='states', xlab='time')




# Part B multiplication of matrix
ans <- matrix(c(1,0,0,1),nrow = 2, ncol = 2)
P <- matrix(c(0.3,0.5,0.7,0.5),nrow=2,ncol=2)

for (i in 1:51) {
  ans <- ans %*% P   #multiply
  if(i == 10) {
    print("P^10")
    print(ans)
  }
  if(i == 20) {
    print("P^20")
    print(ans)
  }
  if(i == 50) {
    print("P^50")
    print(ans)
  }
}

