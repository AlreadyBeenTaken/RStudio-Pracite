#compare vectors
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
linkedin > facebook

#comapre matrices
matr <- matrix(c(linkedin, facebook), byrow= TRUE, nrow = 2)
matr[matr<13]

#compare with & and |
last <- tail(linkedin, 1)
last < 5 | last > 10
last < 20 & last > 16

#conditional statements
x <- 0
if (x > 0) {
  print("x is positive")
} else if (x==0) {
  print("x is equal to 0")
} else {
  print("x is negative")
}

#while loops
count <- 1
while(count <= 10) {
  print(paste("Count is equal to ", count))
  count = count + 1
}

speed <- 88

#break statement in while loop
while(speed>30) {
  print(paste("Your speed is", speed))
  if(speed>80) {
    break
  }
  if (speed>48) {
    print("Slow down big time!")
    speed = speed - 11
  } else {
    print("Slow down!")
    speed = speed - 6
  }
}

i <- 1
while (i <= 10) {
  print(i*3)
  if ((i*3)%%8==0) {
    print("Whaaaa")
    break
  }
  i <- i + 1
}

#for loop (2 versions)
languages <- c("chinese", "polish", "swedish", "korean", "arabic")

for(lang in languages) {
  print(lang)
}

for(i in 1:length(languages)) {
  print(languages[i])
}

#for loop with lists
nyc = list(pop=8000000,
           boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens",
           "Staten Island"),
           capital = FALSE)

for(item in nyc) {
  print(item)
}

for(i in 1:length(nyc)){
  print(nyc[[i]])
}

#loop over a matrix
numb_vec <- c(12, 34, 56, 3, 5, 2, 12, 111, 90)
mat_numb <- matrix(numb_vec, byrow = TRUE, nrow = 3)
mat_numb

for(num in mat_numb) {
  print(num)
}

#for (i in 1:nrow(ttt)) {
#  for (j in 1:ncol(ttt)) {
#    print(paste("On row ", i, " and column ", j,
#" the board contains ",ttt[i,j]))
#  }
#}

#for loops with next, break
rquote <- "r's internals are irrefutably intriguing"
chars1 <- strsplit(rquote, split = "")
chars <- strsplit(rquote, split="")[[1]]
#!!!you need to add
#this [[1]], cause now it has 40 objects, not 1!!!
length(chars)

rcount = 0
for(char in chars) {
  if(char =="r") {
    rcount = rcount + 1
  }
  if(char=="u"){
    break
  }
}
rcount
