library('dplyr')

data <- data.frame(
  A = c(1, 2, 3, 4, 5),
  B = c(6, 7, 8, 9, 10),
  C = c(11, 12, 13, 14, 15)
)

cat("Data Frame:\n")
print(data)

cat("Column A:\n")
print(data$A)
cat("Column B:\n")
print(data$B)
cat("Column C:\n")
print(data$C)

cat("Row 1:\n")
print(data[1,])


cat("Sum of Column A:", sum(data$A), "\n")
cat("Sum of Column B:", sum(data$B), "\n")
cat("Sum of Column C:", sum(data$C), "\n")

mean(as.numeric(data[1, ]))
mean(as.numeric(data[2, ]))

transposed_data <- t(data)
cat("Transposed Data Frame:\n")
print(transposed_data)
