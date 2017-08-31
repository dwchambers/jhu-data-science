x <- read.csv("hw1_data.csv")
#12 Look at first rows
head(x)
#14 Look at last rows
tail(x)
#15 What is the value of Ozone in the 47th row?
x[47,1]
#16 How many missing values are in the Ozone column?
sum(is.na(x[,1]))
#17 What is the mean of the Ozone column in this data set?
mean(x[,1], na.rm = TRUE)
#18 Extract the subset of rows where ozone>31 and temp>90. What is the mean of Solar.R on this subset?
desired_rows <- x[x[,1]>31 & x[,4]>90,]
mean(desired_rows[,2], na.rm = TRUE)
#19 What is the mean of Temp when Month = 6?
desired_rows <- x[x[,"Month"]==6,] #return rows where month == 6
mean(desired_rows[,"Temp"], na.rm = TRUE)
#20 What is the max ozone in May?
desired_rows <- x[x[,"Month"]==5,] #return May rows
max(desired_rows[,"Ozone"], na.rm = TRUE)
