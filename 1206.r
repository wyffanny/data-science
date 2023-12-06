{
  x=3
}

values_x <- c(2, 4, 7, 15)
seq_along(values_x)
for(x in seq_along(values_x))
{
  values_x[[x]]+3
}


oneComingStudentMajor <- sample(c("Economics", "Sociology"), 1)
print(oneComingStudentMajor)

if(oneComingStudentMajor == "Economics")
  {
  print("Please go to room 201.")
}

if(oneComingStudentMajor == "Sociology")
  {
  print("Please go to room 301.")
}

