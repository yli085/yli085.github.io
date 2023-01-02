## matrix data for heatmap plot
# quick matrix data
mat = matrix(rnorm(3*3), nrow=3, ncol=3) 

# create nr x nc matrix
nr=3
nc=4
mat = matrix(rnorm(nr*nc, mean=1, sd=0), nrow=nr)
# Note: the data are arranged by columns, and can be changed into by rows by adding: byrow = TRUE    


## A dataframe with both character(factor) and number data types
# iris is a 150x5 dataframe
head(iris)

## useful functions for creating data
# generates a vector of normally distributed random numbers
set.seed(123)
rnorm(n=10, mean = 1, sd = 0)

# generate the random elements from the given data with or without replacement
set.seed(123)
sample(100, 1) # default replace = F
sample(1:10, 24, replace = T) # when need more than the range can offer, change replace=T.

# create a series of characters
LETTERS[1:24]
letters[1:24]

# repeat
rep(1, 10)

# concatenate strings
paste0()


