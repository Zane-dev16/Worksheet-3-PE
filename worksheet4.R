n <- 14
sum_x <- 1393.21
sum_x_sq <- 138694.43
alpha <- 1 - 0.94

sample_mean <- sum_x / n
s <- sqrt((1 / (n-1)) * (sum_x_sq - sum_x^2/n))

quartile <- qnorm(1 - alpha/2)
low_bound <- sample_mean - quartile * s/sqrt(n)
high_bound <- sample_mean + quartile * s/sqrt(n)
c(low_bound, high_bound)
