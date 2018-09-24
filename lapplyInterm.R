#LAPPLY
#output of lapply() is a LIST! (but you can unlist it, chill)
myIdols <- c("Natalie Portman: actress", "Lyndsey Scott: programmer",
             "Zaha Hadid: architect", "Maria Sklodowska: scientist")
length(myIdols)
myIdols_split <- (lapply(myIdols, strsplit, ":"))
myIdols_split[[1]]
length(myIdols_split)
#inspect structure
str(myIdols_split)

first_el <- function(x) {x[[1]][1]}
second_el <- function(x) {x[[1]][2]}
names <- lapply(myIdols_split, first_el)
occup <- lapply(myIdols_split, second_el)
occup
names

#anonymous functions
years <- c(1900, 2000, 2010)
year_add_10 <- lapply(years, function(x) {x+10})
year_add_10

#SAPPLY - simplified apply
temp <- list(c(3,5,6,3),c(12,-4,0,-7), c(45,12,-1))
lapply(temp, min)
sapply(temp, min)
lapply(temp, max)
sapply(temp, max)
#sapply - simplify to a vector

#sapply with your own function
sapply(temp, function(x) {(min(x)+max(x))/2})

#sapply with function returning vector
extremes <- function(x) {
  c(min = min(x), max = max(x))
}
sapply(temp, extremes)

#what if sapply cant simplify
below_zero <- function(x) {
  x[x<0]
}
lapply(temp, below_zero)
sapply(temp, below_zero)
#they are identical

#VAPPLY
#apply function over list or vector
#explicitly specify output format

basics <- function(x) {
  c(min = min(x), max = max(x), mean = mean(x))
}
sapply(temp, basics)
vapply(temp, basics, numeric(2))
vapply(temp, basics, numeric(3))
