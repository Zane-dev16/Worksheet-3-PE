sample_mean <- 40609.1
sample_var <- 1.06821 * 10^7
h0 <- 40000
n <- 20

# Calculate the sample standard deviation
sample_sd <- sqrt(sample_var)

# Calculate the t-value
t <- (sample_mean - h0) / (sample_sd / sqrt(n))

# Calculate the cumulative probability from the t-distribution
cumulative_probability <- pt(t, df = n - 1)
print(cumulative_probability)
