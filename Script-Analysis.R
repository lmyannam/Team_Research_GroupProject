library(tidyverse)
# Load data
data <- read_csv("secondary-attendance-csv-2.csv")
# Calculate rate
data$Rate <- data$UnauthSes / data$TotalSess

#Histogram
hist(data$Rate, 
     col = "gray", 
     main = "Unauthorized Rate Distribution",
     xlab = "Unauthorized Absence Rate",
     ylab = "Frequency")

#Scatter plot
plot(data$Tot_Pupil, 
     data$Rate, 
     main = "Correlation Analysis of Unauthorized Absentees",
     pch = 16, 
     col = "red",
     xlab = "Total Number of Pupils",
     ylab = "Unauthorized Absence Rate")

# Correlation test
cor.test(data$Tot_Pupil, data$Rate, method = "spearman")
