# data.frame function
df <- data.frame(a = 1:4, b = letters[1:4])
df

# get individual elements
df[1,1]

# Get entire column or row (leave on missing)
df[1,]
df[,1]

# Two ways of getting column
# if columns are named, can use names to index
df[,"a"]

# using $
df$b
# As default data frames will consider vectors of character as factors
# Telling explicitly is needed to get the character vector not factors
df <- data.frame(a = 1:4, b = letters[1:4], stringsAsFactors = FALSE)

# Combining data frames
# This functions don't modify the original DF
# To replace the old Df a new assignment is needed

# Row-wise
df2 <- data.frame(a = 5:7, b = letters[5:7])
rbind(df,df2)

# Column-wise
df3 <- data.frame(c = 5:8, d = letters[5:8])
cbind(df,df3)
