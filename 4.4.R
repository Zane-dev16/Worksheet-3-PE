sample_mean <- 62.2
sample_var <- 10.48
h0_mean <- 61
n <- 36

# Calculate the sample standard deviation
sample_sd <- sqrt(sample_var)

z <- (sample_mean - h0_mean) / (sample_sd / sqrt(n))
p <- 2*(1-pnorm(z))
p
