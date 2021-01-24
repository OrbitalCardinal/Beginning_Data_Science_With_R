# Factors
# Categorical data vectors
f <- factor(c())
f

# Categories 
levels(f)
# Specify levels
ff <- factor(c("small","small","medium","large","small","large"),
                levels = c("small","medium","large"))

# The order of factors levels affects how summary information is printed
summary(f)
summary(ff)

# Specify levels are ordered
of <- factor(c("small","small","medium","large","small","large"),
                levels = c("small","medium","large"), ordered = TRUE)

# Can also use ORDERED function
ordered(ff)
ordered(f, levels = c("small", "medium","large"))
