args(sample)

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
sum(linkedin, facebook)
new1 <- linkedin + facebook
new1
new2 <- c(linkedin, facebook)
new2
?ls
ls()

#your own function
to_pow <- function(number, power=1) {
  numb = number
  while(power>1) {
    number = number * numb
    power = power-1
  }
  return(number)
}
to_pow(4,3)

two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}
two_dice()

#R PASSES ARGUMENTS BY VALUE

#PACKAGES------------
#install packages - install.packages()
#load packages - library (with error), require (with warning)
#load package - attach it to the search list
search()
