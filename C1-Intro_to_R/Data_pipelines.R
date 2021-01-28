# Overwritting a variable to apply functions 
# or transorft data is not recommended

# Also, aving mulitple variables to save transformations is 
# not the best way to deal with it.

# Feeding the results of a function as the input of another
# is hard to read


# The pipe operator (%>%) comes with the magrittr library
library("magrittr")
# x %>% f is equivalent to f(x)
# writing
# x %>% f %>% g %>% h is equivalent to h(g(f(x)))

# WRITING FUNCTIONS THAT WORK WITH PIPELINES
# Write the functions so the first parameter is the data to operate on


# Example, sampling n random rows of a data frame 
subsample_rows <- function(d, n) {
    rows <- sample(nrow(d),n)
    d[rows,]
}

d <- data.frame(x = rnorm(100), y = rnorm(100))
d %>% subsample_rows(n = 3)
