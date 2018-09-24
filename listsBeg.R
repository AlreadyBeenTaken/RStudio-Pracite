#list - super data type, can store any piece of info in it!
#can contain other lists, vectors, data frames, matrices...

#create a list (wth names)
my_vec <- 1:20
my_mat <- matrix(1:9, ncol = 3)
#----------
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
planets_df <- data.frame(name, type, diameter, rotation, rings)
#-----------
my_df <- planets_df

#without names - bad practice
my_list <- list(my_vec, my_mat, my_df)
names(my_list) <- c("vector", "matrix", "df")
#or my_list <- list(name1 = comp1, name2 - comp2)
my_list

#selecting elements from a list - with [[ ]] OR $
my_list$vector
my_list[['df']]
my_list[['df']][3]
my_list[['df']][1,1:3]
my_list$df[4]

#add more elements to the list
sex <- c("Male", "Female", "Male")
my_list$sex <- sex
my_list
