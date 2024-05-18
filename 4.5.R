h0_mean <- 0.03
n <- 125
sample_mean <- 2/n
std <- sqrt(h0_mean * (1-h0_mean))

z <- (sample_mean - h0_mean) / (std/sqrt(n))

1 - pnorm(z)
