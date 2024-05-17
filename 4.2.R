n <- 107
n_calls <- 88
alpha <- 0.03

sample_mean <- n_calls / n

mse <- 0
for (i in 1:n_calls) {
  mse <- mse + (1 - sample_mean)^2
}
for (i in 1:(n - n_calls)) {
  mse <- mse + (-sample_mean)^2
}
s <- sqrt(mse/(n))

quartile <- qnorm(1 - alpha/2)
low_bound <- sample_mean - quartile * s/sqrt(n)
high_bound <- sample_mean + quartile * s/sqrt(n)
c(low_bound, high_bound)
