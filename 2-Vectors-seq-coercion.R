#assigning the city names to the temp vector
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp)<- city
temp

# temperatures of the first three cities in the list:
temp[1:3]

# Access the temperatures of Paris and San Juan
temp[c("Paris","San Juan")]

# Create a vector x of integers that starts 12 and ends at 73.
x<- 12:73
# Determine the length of object x.
length(x)

# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order
seq(1,100,2)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
length(seq(6, 55, 4/7))


# Define the vector x
n <- c(1, 3, 5,"a")

# Note that the x is character vector
class(n)

# convert n to integer vector
# You will get a warning but that is ok, the function will convert "a" to NA
n <- as.numeric(n)
n

