# "." is used in magrittr pipelines to specify im which parameter of 
# the next function the input must go

# library("magrittr")

d <- data.frame(x = rnorm(10), y = rnorm(10))
d %>% lm(y ~ x, data = .)

# "." can be used more than once when calling a function
# it can be used in expression or function calls

# Examples:

# boolean expression with "."
rnorm(4) %>% data.frame(x = ., is_negative = . < 0)

# aplying functions to "."
rnorm(4) %>% data.frame(x = ., y = abs(.))

# if only "." appears in function calls, it will still be given
# as the first expression to the function on the right side of %>%
# Example:
rnorm(4) %>% data.frame(x = sin(.), y = cos(.))


# Defining functions using "." 
# . %>% f, is equivalent to writing, function(.) f(.)
# Is a quick way of defining a function as a combination of other functions
# Example:
f <- . %>% cos %>% sin
# is equivalent to, f <- function(.) sin(cos(.))
# Defining functions from combining other functions is called
# TACIT or POINT-FREE PROGRAMMING

# You can just write a function specifying the pipeline like
# you would write an actual pipeline.
# you just give it . as the very first left side, instead of a dataset
# and you are defining a function instead of running data thorugh pipeline.



