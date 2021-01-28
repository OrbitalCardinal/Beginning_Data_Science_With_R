# : operator
1 : 50

# Length of vectors
# Single strings always return 1
length("qax")
length("quux")
length(c("foo","barz"))

# c() concatenate

# Length of strings
nchar("qax")
nchar("quux")
nchar(c("foo","barz"))

# Indexing vectors
(v <- 1:5)
v[1]
v[3]

# Indexing subvectors
v[1:3]
v[c(1,3,5)]

# Indexing vector with boolean values
v[c(TRUE,FALSE,TRUE,FALSE,TRUE)]

# Combining expressions
# Getting even numbers
v %% 2 == 0
v[v %% 2 == 0]

# Complement of the vector
v[-(1:3)]

# Name vector indices
v <- c("A" = 1, "B" = 2, "C" = 3)
v
v["A"]
names(v) <- c("x","y","z")
v["x"]
