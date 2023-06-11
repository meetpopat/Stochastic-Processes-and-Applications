# Assignment 2
# Name - Meet Popat
# Roll no - 2020320

# Q2
# Random walk for A with wining probability 0.8

start_balance <- 5
bet <- 1
current_balance <- start_balance
vec = as.vector(0)
vec[1]= start_balance

while(current_balance>0 && current_balance<10){ #till he hits the target or goes bancrupty
  
  outcome <- sample(c(-1,1), size=1, replace=TRUE,prob=c(0.2,0.8)) #generates a randow walk 
  if(outcome == 1){ #if he win add the bet i.e 1
    current_balance = current_balance + bet
    
  }
  else{ #else remove 1
    current_balance = current_balance - bet
  }
  vec <- append(vec,current_balance)
  
}
plot(seq(1,length(vec)),vec,xlab='states',ylab='money',type='l')


# Random walk for B with wining probability 0.2


set.seed(123)
start_balance <- 5
bet <- 1
current_balance <- start_balance
vec = as.vector(0)
vec[1]= start_balance

while(current_balance>0 && current_balance<10){

  outcome <- sample(c(-1,1), size=1, replace=TRUE,prob=c(0.8,0.2))
  if(outcome == 1){
    current_balance = current_balance + bet
    
  }
  else{
    current_balance = current_balance - bet
  }
  vec <- append(vec,current_balance)

}
plot(seq(1,length(vec)),vec,xlab='states',ylab='money',type='l')
  














