#Script to plot the logistic growth data

growth_data <- read.csv("Session1data.csv")

install.packages("ggplot2")
library(ggplot2)

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("N") +
  
  theme_bw()
# this is a sigmodal one 

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("logN") +
  
  scale_y_continuous(trans='log10')
#this is where you can work out the intial size and the carrying capacity by transforming the data 
