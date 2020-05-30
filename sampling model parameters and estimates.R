# TAKING A RANDOM DRAW 
install.packages("tidyverse")
install.packages("dslabs")
library(tidyverse)
library(dslabs)
ds_theme_set()
take_poll(25) ##random draw 25 beads for 4 times
take_poll(25)
take_poll(25)
take_poll(25) ## we will get four different answers, different sample proportion, because the sample porpotion is a random variable.

##simulation 1
N<-25
p<- seq(0,1,length.out=100)
p
se<- sqrt(p*(1-p)/N)
se
plot(p,se)

##simulation 2
p<- seq(0,1,length=100)
sample_sizes <- c(25, 100, 1000)
for (N in sample_sizes)
{
  se<-sqrt(((p*(1-p))/N))
  plot(p,se, ylim=c(0,0.1))
}

## E(Xbar)=p ; SE(Xbar)=sqrt(p*(1-p)/N)
## the different between proportion of vote = d = (Xbar-(1-Xbar)) = 2Xbar-1
## E(d) = E (2Xbar-1) = 2p-1 ; SE(d) = SE (2Xbar-1) = 2*sqrt(p*(p-1)/N)
