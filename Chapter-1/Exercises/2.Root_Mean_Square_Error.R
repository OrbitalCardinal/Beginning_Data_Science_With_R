# Write a pipeline that computes the Root Mean Sqaure Error from 
# a data frame containing the t andd y values
data.frame(t = rnorm(10),y = rnorm(10)) %$%
    sum((t - y)^2) %>% mean() %>% sqrt()

