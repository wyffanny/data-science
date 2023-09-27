# Basic Date Type ----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F, T)
# using c() to collect your value
typeof(c("John", "Mary"))
typeof(list("John", 178, TRUE))

# Binding ----
personName = c("John", "Mary")
interestingNumber = c(2, 3.1412)
covidPositive = c(TRUE, TRUE, F)

# name call to acess value
personName
interestingNumber
covidPositive

# Retrieve ONE element value ----
#  by position / index
personName[[1]]
personName[[2]]

list("John", 178, TRUE)
listExample = list("John", 178, TRUE)

listExample
listExample[[3]]

# Name your element values ----
## name: John, age: 38, height: 178, isMarried: False
recordExample1=list("John", 38, 178, FALSE)
recordExample2=list(
  "name"="John",
  "age"=38,
  "height"=178,
  "isMarried"=F
)

recordExample1[[1]]
recordExample2[[1]]
recordExample2$name
recordExample2[["name"]]
recordExample2$isMarried
