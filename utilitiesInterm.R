#mean, abs, round, sum
new_numbers <- c(13.45, -56.33733, 4.152315)
sum(round(abs(new_numbers)))
new_numbers_rounded <- round(new_numbers, 2)
new_numbers_rounded

#seq, rep, sort, rev, str, append, is.*(),as.*(), unlist
linkedin <- list(15,5,13,9, 7,20,2)
facebook <- list(10,10,2,13,11,9,2)
str(unlist(linkedin))
all_social <- append(unlist(linkedin), unlist(facebook))
sorted_all_social <- sort(all_social, decreasing = TRUE)
sorted_all_social

numbs_from_seq <- seq(1,13,3)
numbs_from_seq_doubled <- rep(numbs_from_seq, times = 2)
numbs_from_seq_doubled
numbs_from_seq

seq_from_1_to_500 <- seq(1,500, by=5)
length(seq_from_1_to_500)
seq_from_1500_to_1200 <- seq(1500, 1200, by = -6)
seq_from_1500_to_1200

#REGEX
#GREPL & GREP
# grepl - returns TRUE when pattern is found
# grep - return a vector of indices of the character strings
#that contains the pattern

emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
logic_edu <- grepl(pattern = "edu", emails)
one <- emails[logic_edu]
emails[c(1,4)]
index_edu <- grep(pattern="edu", emails)
two <- emails[index_edu]
identical(one, two)
one == two

#more advanced catching only ending with edu
check <- grepl(pattern = '.*@.*\\.edu$', emails)
check2 <- grep(pattern = '.*@.*\\.edu$', emails)
emails[check]
emails[check2]

#SUB & GSUB - replacement!
#sub - only replaces 1st match
#gsub - replaces all matches
sweet_animals <- c("bunny", "wombat", "panda", "hamster", "kitten")
new_sweet_animals <- sub(pattern="n", replacement="_", sweet_animals)
without_t_animals <- gsub(pattern="t", replacement = "*", sweet_animals)
without_t_animals
#sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)
#\\1 reference to the content inside the parantheses

#DATE & TIME

#get the current date
today <- Sys.Date()
today
unclass(today) #it's just a numeric under the hood!
now <- Sys.time()
now
unclass(now)

#create and format dates
january_13 <- "2001-01-13"
january_13_date <- as.Date(january_13)
january_13_date
class(january_13_date)

#NEEDED here ---------------
lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")
#----------------
my_birthday <- as.Date("12 September 1997", format = "%d %B %Y")
my_birthday

#convert days to char strings that use a different date notation
today_weekday <- format(Sys.Date(), format = "Today is a %A!")
today_weekday

#POSICxt objects -> time objects in R
?strptime #full documentation of conversion symbols in time
str1 <- "May 23, '96 hours:15 minutes:02 seconds:55"
str2 <- "2020-4-12 17:33:11"
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2)
time1; time2
time1_string <- format(time1, format = "%M minutes")
time2_string <- format(time2, format = "%I:%M %p")
time1_string; time2_string

#calculations with Dates & Times
as.Date("2012-05-04") - as.Date('1997-09-12')

birth <- as.POSIXct("1879-03-14 14:37:23")
death <- as.POSIXct("1955-04-18 03:47:12")
einstein <- death - birth
einstein

seasons <- c("20-Mar-2015", "25-Jun-2015", "23-Sep-2015", "22-Dec-2015")
names(seasons) <- c("spring", "summer", "fall", "winter")
seasons
astro_dates <- as.Date(seasons, format="%d-%b-%Y")
astro_dates
