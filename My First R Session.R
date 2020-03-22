x <- c(3,4,5)
x
sum (x)
var (x)
mean (x)
capacity <- c(14,13,14,13,16,NA,NA,20,NA)
mean(capacity)
mean(capacity, na.rm=TRUE)
is.na(capacity)
substr("abcdefg",2,4)
sumofsquares <- function(x,y,z){
  sumsq <- sum(c(x^2,y^2,z^2))
  return(sumsq)
}
sumofsquares(3,4,5)
y <- seq(10,30)
y
y [4]
w <- seq(10,30,2)
w
trifecta <- c(6,8,2)
repeated_trifecta <- rep(trifecta,4)
repeated_trifecta
repeated_trifecta <- rep(trifecta,x)
repeated_trifecta
num_matrix <- seq(5,100,5)
dim (num_matrix) <-c(5,4)
num_matrix
t(num_matrix)
num_matrix <- matrix(seq(5,100,5),nrow=5)
num_matrix
num_matrix <- matrix(seq(5,100,5),nrow=5,byrow=T)
num_matrix
num_matrix[5,4]





eye_color <- c(2,2,4,1,5,5,5,6,1,3,6,3,1,4)
feye_color <- factor(eye_color)
levels(feye_color) <- c("amber", "blue", "brown", "gray", "green", "hazel")
feye_color



moods <- c(1,3,2,3,3,2,2,1,3,4)
fmoods <- factor(moods)
levels(fmoods) <- c("happy", "okay", "sad", "depressed")
fmoods



empathy_score <- c(15,21,45,32,61,74,53,92,83,22,67,55,42,44)
eyes_and_empathy <- list(eyes_code=eye_color, eyes=feye_color, empathy=empathy_score)
eyes_and_empathy
eyes_and_empathy$empathy
empathy_score
eyes_and_empathy$empathy[4]

t.result <- t.test(eyes_and_empathy$empathy, mu=30)
t.result
t.result$data.name
t.result$p.value


e <- data.frame(eye_color,feye_color,empathy_score)
e
e[7,3]
e[7]
e[7,]
edit(e)
e.blue <- e$empathy_score[e$feye_color=="blue"]
e.green <- e$empathy_score[e$feye_color=="green"]
e.hazel <- e$empathy_score[e$feyecolor=="hazel"]
e.averages <- c(mean(e.blue),mean(e.green),mean(e.hazel))
e.amounts <- c(length(e.blue), length(e.green), length(e.hazel))
colors <- c("blue", "green", "hazel")
e.averages.frame <- data.frame(color=colors, average=e.averages, n=e.amounts)
e.averages.frame









# Gender, Year, Grade

gender <- c(1, 2, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1)
fgender <- factor(gender)
levels(fgender) <- c("Male", "Female")
fgender

Year <- c(4,1,2,3,2,2,2,2,2,2,3,3,3,2,2,2,2,3,3,2,2)
fyear <- factor(Year)
levels(fyear) <- c("Senior", "Junior", "Sophomore", "Freshman")
fyear

grade <- c(85.6, 97.5, 97.5, 90.6, 81.2, 91.6, 85.9, 90.5, 100, 82.4, 91, 80.4, 80.2, 100, 87.2, 98.1, 94.5, 95.7, 87, 100.4, 90.7)

gender_year_grade <- list(Gender=fgender, Year=fyear, Grade=grade)
gwf <- data.frame(fgender,fyear,grade)
gwf

library("MASS", lib.loc="C:/Program Files/R/R-3.3.1/library")

edit(anorexia)
edit(Cars93)
edit(anorexia)
edit(crimtab)

gwg
gwf

hist(gwf$grade)
xlab= "Grade in Algebra 2"
ylab= "Number of Students"
main= "Distribution of Algebra 2 Grades"
hist(gwf$grade, xlab="Grade in Algebra 2", ylab="Number of Students", main="Distribution of Algebra 2 Grades")

breaks=4
breaks=10


probability=True
probability= True
probability= TRUE
hist(gwf$grade, xlab="Grade in Algebra 2", ylab="Number of Students", main="Distribution of Algebra 2 Grades", probability= TRUE)
lines(density(gwf$grade))


table(gwf$year)
table(gwf$type)
table(gwf$fyear)

barplot(table(gwf$fyear))
breaks=4
xlim= c(0,4)
xlim= c(Senior, Junior, Sophomore, Freshman)
xlab="Grade"
ylab="Number of Students"
barplot(table(gwf$fyear))
axis.lty="solid"
axis.lty="dashed"
barplot(table(gwf$fyear))
space="0.5"
barplot(table(gwf$fyear), xlab="Grade", ylab="Number of Students", axis.lty="solid")

pie(table(gwf$fyear))

type.frame <- data.frame(table(gwf$grade))
type.frame
dotchart(type.frame$Freq,grade)

type.frame <- data.frame(table(gwf$fyear))
type.frame
dotchart(type.frame$Freq,fyear)

#US Comercial Space Reveneues 1990-1994

rev.values <- c(1000,1300,1300,1100,1400,800,1200,1500,1850,2330,860,1300,1400,1600,1970,570,380,450,465,580,155,190,210,250,300)
space.rev <- matrix(rev.values,nrow=5,byrow=T)
colnames(space.rev) <- c("1990", "1991", "1992", "1993", "1994")
rownames(space.rev) <- c("Commercial Satellites Delivered", "Satellite Services", "Satellite Ground Equipment", "Commercial Launches", "Remote Sensing Data")
space.rev
color.names= c("black", "grey25", "grey50", "grey75", "white")
barplot(space.rev, beside=T, xlab="Year", ylab="Revenue", col=color.names)


# Scatter Plots

plot(gwf$fgender, gwf$grade, xlab="Gender", ylab="Grade", main= "Grade & Gender of Algebra 2 Class")


