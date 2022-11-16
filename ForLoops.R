#Today we will be practicing for loops


#basic syntax and operations examples
letters <- c('A','B','C','D')
for( i in letters){print(i)}
myList <- list(letters,"x","y")
for( i in myList){print(i)}
myMatrix <- matrix(letters,nrow=2)
for(z in myMatrix){print(z)}

#you can also use numerical elements in the set definition
for(i in 1:2){print(myMatrix[i,])}
pasted <- character(length=2)
# for paste, collapse instead of sep makes sure output isnt a vector with each input as element!
for(i in 1:nrow(myMatrix)){
  pasted[i] <- paste(myMatrix[i,],collapse ="_")
}
#try the below 2 examples to see difference
for(i in 1:nrow(myMatrix)){
  print(paste(myMatrix[i,],sep ="_"))
}

for(i in 1:nrow(myMatrix)){
  print(paste(myMatrix[i,],collapse ="_"))
}

#cumulative sum function
vect <- c(3,10,4,12,55)
sum.vect <- numeric(5)
current.sum <- 0
for (i in 1:length(vect)){
  sum.vect[i] <-  sum(current.sum,vect[i])
  current.sum <-  sum.vect[i]
}

vec <- 1:10
cubed <- numeric(length(vec))
for (i in 1:10){
  cubed[i] <- vec[i]**3
}




