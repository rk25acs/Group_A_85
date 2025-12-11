print(cor.test(gpa_iq$gpa,gpa_iq$iq, method = "pearson"))

plot(x = gpa_iq$iq, y = gpa_iq$gpa,
     main = "Scatterplot of GPA vs. IQ",  
     xlab = "IQ Score",                  
     ylab = "GPA",                       
     pch = 19,                           
     col = "blue")

max(gpa_iq$gpa)
max(gpa_iq$iq)
min(gpa_iq$gpa)
min(gpa_iq$iq)
mean(gpa_iq$gpa)
mean(gpa_iq$iq)
length(which(gpa_iq$gender==1))
length(which(gpa_iq$gender==2))
