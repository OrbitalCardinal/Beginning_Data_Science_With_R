# Simulate values from normal distribution "rnorm()" function
library("magrittr")

# Write a pipeline that takes samples from this function as input,
# removes the negative values, and computes the mean of the rest.

# My way
rnorm(100) %>% sample(.,20) %>% {.[. > 0]} %>% mean(.)
 