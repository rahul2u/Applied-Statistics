# This is Demo of Creating the Data Frame with Name function

defect.counts <- c(12,29,18,3,34,4)
names(defect.counts) <- c("Weather","Overslept","Alarm Failure","Time Change","Traffic","Other")
defect.counts

df.defects <- data.frame(defect.counts)
df.defects

# Hi this is final
