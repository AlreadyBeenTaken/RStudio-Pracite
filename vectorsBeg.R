poker_vec <- c(140, -50, 20, -120, 240)
roulette_vec <- c(-23, -50, 100, -350, 10)
days_names <- c("Monday", "Tuesday", "Wednesday", "Thursday",
                "Friday")
names(poker_vec) <- days_names
names(roulette_vec) <- days_names
total_daily <- poker_vec + roulette_vec
total_daily

total_poker <- sum(poker_vec)
total_roulette <- sum(roulette_vec)
total_week <- sum(total_poker, total_roulette)

#VECTOR SELECTION (3 METHODS)
#select 1st and 5th element from poker_vec
poker_vec[c(1,5)]
#select 2 to 4
poker_vec[2:4]
#1st el, 2nd and 5th
poker_vec["Monday"]
poker_vec[c("Tuesday", "Friday")]

#CHECK WHICH ELEMENTS ARE POSITIVE
poker_vec > 0
win_poker_days <- poker_vec[poker_vec>0]
win_roulette_days <- roulette_vec[roulette_vec>0]
