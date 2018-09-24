my_mat <- matrix(1:9, byrow = TRUE, nrow= 3)
my_mat

new_hope <- c(460, 314)
empire_strikes <- c(290, 250)
return_jedi <- c(310, 165)
box_office <- c(new_hope, empire_strikes, return_jedi)
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)

#names for rows and cols
region <- c("US", "non-US")
titles <- c("new hope", "empire strikes back", "return of the jedi")
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles

#calculate worldwide box office
sum <- rowSums(star_wars_matrix)

#add a column
star_wars_matrix <- cbind(star_wars_matrix, sum)

#add a row
phantom_menace <- c(400, 300, 700)
star_wars_matrix <- rbind(star_wars_matrix, phantom_menace)

#calculate total box office revenue
sumCol <- colSums(star_wars_matrix)

#selection of matrix elements
#select of non-us
star_wars_matrix[,2]
#select first three movies
star_wars_matrix[1:3,]
