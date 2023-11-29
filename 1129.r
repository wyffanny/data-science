# Creating a vector of numbers
numbers <- c(1, 2, 3, 4, 5)


print(numbers[[1]])
print(numbers[[2]])
print(numbers[[3]])
print(numbers[[4]])


# Using a for loop to iterate over the elements
for (xy in c(1, 2, 3, 4, 5) ) 
{
  print(numbers[[xy]])
}


dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

View(dataSet)
dataSet[[2]][["children"]]


howManyTimes=6
for(.x in 1:howManyTimes)
{
  print(length(dataSet[[.x]]$children))
}  

for(y in seq_along(dataSet))
{
  print(length(dataSet[[y]]$children))
}  

emptyDataSet = list()
1:length(emptyDataSet)
for(.x in c()){
  print(emptyDataSet[[.x]])
}

seq_along(emptyDataSet)
for(.x in seq_along(emptyDataSet)){
  print(emptyDataSet[[.x]])
}

for(.x in seq_along(dataSet)){
  numberOfChildren <- length(dataSet[[.x]]$children)
  print(numberOfChildren)
}

results <- vector("integer", 6)
for (.x in 1:6) 
  {
  results[[.x]] <- length(dataSet[[.x]]$children)
  
}

flights <- readRDS("data/flights_week10.rds")
flightsData <- flights$data[[1]]$data_frame

flightsData |>
  split(
    flightsData$AirlineID
  ) -> split_data

