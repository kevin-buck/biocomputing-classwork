list1 <- list("a","b","c","d","e","f")
list2 <- list(name1="a",name2="b",name3="c")
list3 <- c(list1,list2,seq(1:100))
wages <- read.csv(file="/Users/kevinbuck/Desktop/BioComputing/Classwork/wages.csv")
femaleWages <- wages[wages$gender=="female","wage"]
#finding highest female wage in the dataset
sortedFemaleWages<- sort(femaleWages,decreasing=T)
print(sortedFemaleWages[1])
#finding gender and education level of highest earner
maxWage <- max(wages$wage)
maxEarner.gender <- wages[wages$wage==maxWage,"gender"]
maxEarner.education <- wages[wages$wage==maxWage,"yearsSchool"]
print(paste("the max earner is a ",maxEarner.gender," with ",maxEarner.education,
" years of education who earns $",maxWage," an hour.",sep=""))
#finding average wage for college educated and highschool educated workers
collegeGradsWages <- wages[wages$yearsSchool==16,"wage"]
print(mean(collegeGradsWages))
hsGradsWages <- wages[wages$yearsSchool==12,"wage"]
print(mean(hsGradsWages))
