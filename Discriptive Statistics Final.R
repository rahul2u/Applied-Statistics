# This is provide the basic descriptive statistics 
v <- c(1,2,3,4,5,6,7,8,9,10,2,2)
mean(v)
median(v)
# runif function genrate random uniform distribution and round function 
#round the ratio variable
x <- round(runif(100,1,10))
x
#table function give the frequency and sort function provide the sorted table of 
# Frequency
y<- sort(table(x))
y
mode.value <- max(y)
mode.value
max(y)
y[y ==17]
mode.names <- names(y[max()])
mode.names <- names(y[y == max(y)])
mode.names
mode.names


#We also find the Mode categarical variable that is Nominal Level Measurement
## so we simulate the Data using the sample function

x <- sample(c("Red","Green","CHRISTMAS"),100, replace=TRUE) 
y <- sort(table(x))
y
max(y)
mode.name.sample <-names(y [y== max(y)])
mode.value.sample <- max(y)
mode.name.sample
mode.value

#variance    
var(x)

# Standard deviation
sd(x)

# Acess the data from the nccdc
setwd("C:/Users/lenovo/Desktop/my r work/Applied Statistics/Data/tvs-2014.csv")
tvs <- read.csv("tvs-2014.csv",header = T,skip =2)
head(tvs)
summary(tvs)

# Making sub data set
sub.tvs <- tvs[,c("DEPTH","TOP","MAX_SHEAR")]
head(sub.tvs)
summary(sub.tvs)

# SD
sd(sub.tvs$DEPTH)
var(sub.tvs$DEPTH)
range(sub.tvs$DEPTH)

install.packages("pastecs")
library(pastecs)

options(scipen = 100)
options(digits=3)
stat.desc(sub.tvs)





