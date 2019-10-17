# Access population values from the dataset and store it in pop
pop <- murders$population
# Sort the object and save it in the same object 
pop <- sort(pop)
# Report the smallest population size 
pop[1]

# Access population from the dataset and store it in pop1
pop1 <- murders$population
# Use the command order to find the vector of indexes that orders pop1 and store in object ord
ord <- order(pop1)
# Find the index number of the entry with the smallest population size
ord[1]

# Find the smallest value for variable total 
which.min(murders$total)
# Find the smallest value for population
which.min(murders$population)

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)
# Define variable states to hold the states
states <- murders$state
# Use the index you just defined to find the state with the smallest population
states[i]

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)
# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names from the murders data frame
states <- murders$state
# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)
# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states=states[ind],ranks=ranks[ind])
my_df

