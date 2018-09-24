#matrix - one data type, df - different data types!
#read csv file to R
carsData <- read.csv(file="c:/users/kamil/documents/r/mtcars.csv",
                     header= TRUE, sep = ",")

#read five first and five last observations
head(carsData)
tail(carsData)
summary(carsData)
?mtcars

#have a look at the structure
str(carsData)

#your own dataFrame! - planets in our solar system
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <- data.frame(name, type, diameter, rotation, rings)
str(planets_df)

#selection of df elements - same as in matrices
planets_df[1,]
planets_df[,2]
planets_df[2:3, 4]

#selection with col names!
planets_df[1:3, "type"]
planets_df$rings
planets_df[planets_df$rings,]
#CANT SELECT ROWS LIKE THAT!
#planets_df["Mars", 2]

#subset - does the same thing xd
subset(planets_df, subset = rings)
subset(planets_df, subset = diameter < 1)
subset(planets_df, subset = name == c("Mercury", "Mars"))

#sorting with order()
numbs <- c(34, 21, 100)
order(numbs)
#reshuffle numbs
numbs[order(numbs)]

position <- order(planets_df$diameter)
planets_df <- planets_df[position,]
planets_df
