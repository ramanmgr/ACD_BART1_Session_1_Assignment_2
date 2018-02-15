##1. What should be the output of the following Script? 
  #v <- c( 2,5.5,6) t <- c(8, 3, 4) print(v%/%t) 
v <- c( 2,5.5,6)
v
t <- c(8, 3, 4)
t
print(v%/%t)

#> v <- c( 2,5.5,6)
#> v
#[1] 2.0 5.5 6.0
#> t <- c(8, 3, 4)
#> t
#[1] 8 3 4
#> print(v%/%t)
##[1] 0 1 1


##2.	You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,....xx_25.xlsx in a dir. 
#Write a program to extract the contents of each excel sheet and make it one df. 

getwd()
setwd("D:\\BIG DATA\\DATA ANALYTICS WITH R, EXCEL & TABLEAU\\1 INTRODUCTION")
getwd()

library(xlsx)
library(readxl)
file.list <- list.files(pattern = "*.xlsx") 
file.list
df.list <- lapply(file.list, read_excel)
df.list
df1 <- rbind.data.frame(df.list,idrow=TRUE)
df1
df2 <- cbind.data.frame(df.list, idcol=TRUE)
df2


##3. FOr CSV Files

getwd()
setwd("D:\\BIG DATA\\DATA ANALYTICS WITH R, EXCEL & TABLEAU\\1 INTRODUCTION")
getwd()


library(readxl)

temp = list.files(pattern="*.csv") 
temp
myfiles = lapply(temp, read.delim)
myfiles
df1 <- rbind.data.frame(myfiles, idcol=TRUE)
df1
df2 <- cbind.data.frame(myfiles, idcol=TRUE)
df2
