#Load Dataset
gpa_iq<- read.csv("gpa_iq.csv", stringsAsFactors = FALSE)

#Clean Dataset
gpa_iq <- gpa_iq[gpa_iq$gpa <= 10.0,]
write.csv(gpa_iq,"gpa_iq.csv", row.names = FALSE)
num <- nrow(gpa_iq)
gpa_iq$obs <- 1:num

#Statistical analysis
max(gpa_iq$gpa)
max(gpa_iq$iq)

min(gpa_iq$gpa)
min(gpa_iq$iq)

mean(gpa_iq$gpa)
mean(gpa_iq$iq)

length(which(gpa_iq$gender==1))
length(which(gpa_iq$gender==2))

mean(gpa_iq$gpa)
sd(gpa_iq$gpa)

mean(gpa_iq$iq)
sd(gpa_iq$iq)

#Pearson Test with significance

print(cor.test(gpa_iq$gpa,gpa_iq$iq, method = "pearson"))

#Plotting Scatterplot graph

plot(x = gpa_iq$iq, y = gpa_iq$gpa,
     main = "Scatterplot of GPA vs. IQ",  
     xlab = "IQ Score",                  
     ylab = "GPA",                       
     pch = 19,                           
     col = "blue")

#Plotting Histogram for GPA

hist(gpa_iq$gpa,
     main = "Histogram of GPA",
     xlab = "GPA",
     ylab = "Frequency",
     xlim = c(0,11),
     ylim = c(0,25),
     col="green")

#Plotting Histogram for IQ

hist(gpa_iq$iq,
     main = "Histogram of IQ",
     xlab = "IQ",
     ylab = "Frequency",
     xlim = c(70,140),
     ylim = c(0,25),
     col="orange")