# NA
# Operations to NA are NA
NA + 5
NA == NA
NA != NA

# Check if a value is missing
is.na(NA)
is.na(4)

# Functions such as sum return NA if the input contains NA
v <- c(1,NA,2)
sum(v)

# To ignore NA, this must be specified:
sum(v, na.rm = TRUE)
