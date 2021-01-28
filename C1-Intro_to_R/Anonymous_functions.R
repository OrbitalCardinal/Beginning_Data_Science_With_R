# magrittr LAMBDA EXPRESSIONS
# Example: Function that plots the variable Y against the variable X
# andd fits and plots a linear model of Y against X.

# data
x <- rnorm(20)
y <- x + rnorm(20)

# First way with no lambda expression
plot_and_fit <- function(d) {
    plot(y ~ x, data = d)
    abline(lm(y ~ x, data = d))
}
data.frame(x,y) %>% plot_and_fit

# Second way with lamba expression
data.frame(x,y) %>% (function(d) {
    plot(y ~ x, data = d)
    abline(lm(y ~ x, data= d))
})

# Third way using curly bracekts
data.frame(x,y) %>% {
    plot(y ~ x, data = .)
    abline(lm(y ~ x, data = .))
}
