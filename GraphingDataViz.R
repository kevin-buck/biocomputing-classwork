#This Lesson is an intro to Plotting and Visualization of Continous Data

#loading proper libraries
library(ggplot2)
library(cowplot)
#importing the mpg data
mpg = read.table("mpg.txt",header=T,sep = "\t",stringsAsFactors = F)
#sample scatterplot
ggplot(data=mpg,aes(x=displ,y= cty)) + geom_point() 
#getting rid of gridlines
ggplot(data=mpg,aes(x=displ,y= cty)) + geom_point() +theme_classic() + 
  xlab("Displacement(L)") + ylab("City Gas Mileage (mpg)")
#Changing point colors
ggplot(data=mpg,aes(x=displ,y=cty)) + geom_point(color = "blue", shape = 22, size = 3) +
  theme_bw() + xlab("Displacement (L)") + ylab("City Gas Mileage (mpg)") +
  scale_y_log10(limits=c(1,100),breaks=c(1,10,100))
#Having color for points be scaled with data value
ggplot(data=mpg,aes(x=displ,y=cty,col=cyl)) + geom_point() +
  theme_classic() + xlab("Displacement (L)") + ylab("City Gas Mileage (mpg)")
