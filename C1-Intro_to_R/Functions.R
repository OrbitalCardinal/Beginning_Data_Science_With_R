# Getting documentation for functions
?length

# Writing own functions
square <- function(x) x ** 2
square(1:4)

# Multiple statements function
square_and_subtract <- function(x,y) {
    squared <- x ** 2
    squared - y
}

square_and_subtract(1:5, rev(1:5))

#Returning function values
square_and_subtract <- function(x,y) return(x ** 2 - y)
square_and_subtract(1:5, rev(1:5))



