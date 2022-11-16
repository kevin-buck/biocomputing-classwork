#This file will be working with CSV Data and teach basic data manipulation
wages <- read.csv(file="/Users/kevinbuck/Desktop/BioComputing/Classwork/wages.csv")
df <- data.frame(name=c("abby","sam","clara","joe"),age=c(24,27,12,82))
#some ways to get number of rows
Nrows <- dim(wages)[1]
nrow(wages)
#sorting a dataframe
order(df$name)
sortedDF <- df[order(df$name),]
#practicing data sorting in the wages.csv file by writing out a file for a sorted
#table of unique gender and years experience combos sorted by gender then yrs exp
GenderYrsExp <- unique(wages[,c("gender","yearsExperience")])
GenderYrsExp <- GenderYrsExp[order(GenderYrsExp$gender,GenderYrsExp$yearsExperience),]
write.table(GenderYrsExp,file="UniqueGenderYrsExp.csv",dec=",")
#returning gender, yrs exp, and wage for highest and lowest earners, as well as
# number of females in top 10 earners
GndrYrsExpWage <- wages[,c("gender","yearsExperience","wage")]
sortedWages <- GndrYrsExpWage[order(GndrYrsExpWage$wage),]
highestEarner <- tail(sortedWages,n=1)
print(paste("The highest earner is a ",highestEarner$gender," who has ",highestEarner$yearsExperience,
            " years of experience and earns $",highestEarner$wage," per hour.", sep=""))
lowestEarner <- head(sortedWages,n=1)
print(paste("The lowest earer is a ",lowestEarner$gender," who has ",lowestEarner$yearsExperience,
            " years of experience and earns $",lowestEarner$wage," per hour.", sep=""))
head(GndrYrsExpWage)
female_top_earners = sum((tail(sortedWages,n=10))$gender == "female")
print(paste("There are ",female_top_earners,"females in the top 10 earners."),sep="")
#figuring out the effects of going to college on minimum wages
collegeWages <- wages[wages$yearsSchool == 16,"wage"]
college.min.wage <- min(collegeWages)
hsWages <- wages[wages$yearsSchool == 12,"wage"]
hs.min.wage <- min(hsWages)
print(paste("College graduates make $",college.min.wage," an hour minimum, while ",
            "those who only graduated high school make $",hs.min.wage," minimum.", sep=""))