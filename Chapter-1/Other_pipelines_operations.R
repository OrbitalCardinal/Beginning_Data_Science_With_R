# library("magrittr")
# Case 1:
# Refer to the parameters of the data frame on the left side 
# of the pipe expression directly.

# Using "."
d <- data.frame(x = rnorm(10), y = 4 + rnorm(10))
d %>% {data.frame(mean_x = mean(.$x), mean_y = mean(.$y))}

# Using "%$%" you can get the variables just by naming them instead
d %$% data.frame(mean_x = mean(x), mean_y = mean(y))

# Case 2:
# Output or plot intermediate result of a pipeline.
# The (tee) operator %T>%
# It computes the left side and passes it intact to the right side
d <- data.frame(x = rnorm(10), y = rnorm(10))
d %T>% plot(y ~ x, data = .) %>% lm(y ~ x, data = .)


# Case 3: 
# The %<>% operator
# Assigns the result of a pippeline to a variable on the left
# For example, when you do some dat cleaning  right after loading the data
# and you never want to use anything between the raw and the cleaned data.

# d <- read_my_data("/path/to/path")
# d %<>% clean_data

