#Conditionals in R
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}

#ifelse
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)

# Create function called `sum_n`
sum_n <- function(n){
  x <- 1:n
  sum(x)
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

# Create `altman_plot` 
altman_plot <- function(x, y){
  plot(x+y, y-x)
}


# Run this code (Lexical scope) 
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
my_func(x)
# Print value of x 
print(x)


