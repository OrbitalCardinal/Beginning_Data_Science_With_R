sum(1:4)

average <- function(x) {
    n <- length(x)
    sum(x) / n
}
average(1:5)

average <- function(x) sum(x) / length(x)
average(1:5)

