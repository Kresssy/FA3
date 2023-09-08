table1 <- c(88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
           71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
           42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
           96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35)

Valid <- sum(!is.na(table1))
Mode_value <- as.numeric(names(sort(table(table1), decreasing = TRUE)[1]))
Median_value <- median(table1)
Mean_value <- mean(table1)

Standard_Deviation <- sd(table1)
Variance <- var(table1)
Skewness_value <- skewness(table1)
Standard_Error_Skewness <- Skewness_value / sqrt(length(table1))
Kurtosis_value <- kurtosis(table1)
Standard_Error_Kurtosis <- Kurtosis_value / sqrt(length(table1))

Minimum_value <- min(table1)
Maximum_value <- max(table1)

Q1 <- quantile(table1, 0.25)
Q2 <- median(table1)
Q3 <- quantile(table1, 0.75)
D9 <- quantile(table1, 0.90)
P95 <- quantile(table1, 0.95)

print("Valid:", Valid, "\n")
print("Mode:", Mode_value, "\n")
print("Median:", Median_value, "\n")
print("Mean:", Mean_value, "\n")

print("Standard Dev:", Standard_Deviation, "\n")
print("Variance:", Variance, "\n")
print("Skewness:", Skewness_value, "\n")
print("StandardES:", Standard_Error_Skewness, "\n")
print("Kurtosis:", Kurtosis_value, "\n")
print("StandardEK:", Standard_Error_Kurtosis, "\n")

print("Minimum:", Minimum_value, "\n")
print("Maximum:", Maximum_value, "\n")

print("Q1:", Q1, "\n")
print("Q2:", Q2, "\n")
print("Q3:", Q3, "\n")
print("D9:", D9, "\n")
print("P95:", P95, "\n")
