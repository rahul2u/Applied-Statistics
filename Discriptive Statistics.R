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
 mode.value <- max(y)
 mode.names <- names(y[y == max(y)])
 mode.names
 