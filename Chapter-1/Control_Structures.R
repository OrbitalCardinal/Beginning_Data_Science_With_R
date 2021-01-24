# If statements
if (2 > 3) "false"
if (3 > 2) "true"

x <- "foo"
if (2 > 3) x <- "bar"
x

if (3 > 2) x <- "baz"
x

# both true and false expressions
if (2 > 3) "bar" else "baz"

# Multiline if
if (2 > 3) {
    x <- "bar"
}

# If statement as expression
x <- if (2 > 3) "bar" else "baz"
x

# !Cannot use for vectorized expressions!
x <- 1:5
if (x > 3) "bar" else "baz"

# Vectorized version of IF statement
x <- 1:5
ifelse(x > 3, "bar","baz")

# Functions with if statements
# !Not vectorized function!
maybe_square <- function(x) {
    if (x %% 2 == 0) {
        x ** 2
    } else {
        x
    }
}
maybe_square(1:5)

# Vectorized function with IFELSE
maybe_square <- function(x) {
    ifelse(x %% 2 == 0, x ** 2,x)
}
maybe_square(1:5)

# Vectorized function with VECTORIZE "functor"
# "functor" = function that takes a functions and returns a function
maybe_square <- function(x) {
    if (x %% 2 == 0) {
        x ** 2
    } else {
        x
    }
}
maybe_square <- Vectorize(maybe_square)
maybe_square(1:5)

# Looping over vectors using FOR statements
x <- 1:5
total <- 0
for (element in x) total <- total + element
total

# Multiline FOR
# seq_along returns a vector of indices
x <- 1:5
total <- 0
for (index in seq_along(x)) {
    element <- x[index]
    total <- total + element
}
total

# WHILE statements
x <- 1:5
total <- 0
index <- 1
while (index <= length(x)) {
    element <- x[index]
    index <- index + 1
    total <- total + element
}
total

# REPEAT statementm loops until a BREAK
x <- 1:5
total <- 0
index <- 1
repeat {
    element <- x[index]
    total <- total + element
    index <- index + 1
    if (index > length(x)) break
}
total
# NEXT jumps to the next iteration


