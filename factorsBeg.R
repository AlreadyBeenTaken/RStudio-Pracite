#factor - store categorical variables, eg. sex
sex_vec <- c("Male", "Female", "Male", "Female", "Female")
factor_sex_vec <- factor(sex_vec)
factor_sex_vec
?factor

#ordinal/nominal categorigal variable
#nominal - no one is better
animal_vec <- c("Dog", "Elephant", "Pig")
factor_animal_vec <- factor(animal_vec)
#ordinal - there is a hierarchy
temp_vec <- c("Low", "Medium", "High")
factor_temp_vec <- factor(temp_vec, order = TRUE, levels =
                            c("Low", "Medium","High"))
factor_animal_vec
factor_temp_vec

#------------------nominal
#factor levels
survey_vec <- c("M", "M", "M", "F", "F")
factor_survey_vec <- factor(survey_vec)
levels(factor_survey_vec) <- c("Female", "Male")
factor_survey_vec
#cant comapre nominal factors (nonsense)!
#summarizing a factor
summary(survey_vec)
summary(factor_survey_vec)

#------------------ordinal
speed_vector <- c("medium", "slow", "slow", "medium",
                  "fast")
factor_speed_vec <- factor(speed_vector, ordered = TRUE,
                           levels = c("slow", "medium",
                                      "fast"))
summary(factor_speed_vec)
#compare ordered factors
da1 <- factor_speed_vec[1]
da4 <- factor_speed_vec[4]
da1>da4
da1<da4
da1==da4
