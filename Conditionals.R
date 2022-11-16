#In this lesson, we learned about and practice conditionals
x <- 2
if(x == 2){
  print("yep, thats true!")
}else{
  print("thats false")
}

#making function to print sqrt of number
y <- -5
if(y >= 0){
  sqrt(y)
}else{
  print("You can't take the square root of a negative number!")
}

#wages.csv challenge
setwd("/Users/kevinbuck/Desktop/BioComputing/Classwork")
wages <- read.csv(file="wages.csv")
male.total.wages <- 0
female.total.wages <- 0
for (i in 1:nrow(wages)){
  if (wages[i,"gender"] == "male"){
    male.total.wages = male.total.wages+as.numeric(wages[i,"wage"])
  }else{female.total.wages = female.total.wages + as.numeric(wages[i,"wage"])}
}
# more concise way to do the above bc im a nerd
second.female.total.wages <- sum(wages[wages[,"gender"] == "female","wage"])
second.male.total.wages <- sum(wages[wages[,"gender"] == "male","wage"])
