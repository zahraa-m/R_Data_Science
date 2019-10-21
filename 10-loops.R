# Here is an example of function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}
# Here is the sum of the first 100 numbers
example_func(100)




# Write a function compute_s_n that with argument n and returns of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x<- 1:n
  s <- x^2
  sum(s)
}
# Report the value of the sum when n=10
compute_s_n(10)




# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Create a vector for storing results
s_n <- vector("numeric", 25)
# write a for-loop to store the results in s_n
for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}




# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
#  Create the plot 
plot(n, s_n)




# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
# Check that s_n is identical to the formula given in the instructions.
identical(s_n, n*(n+1)*(2*n+1)/6)


