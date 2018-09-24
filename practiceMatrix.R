aux_vec <- c(12, 34, 56, 11, 56, 222, 90, 11, 1)
mat1 <- matrix(aux_vec, ncol=3, byrow = TRUE)
mat1
sex <- c("Women", "Men", "No info")
occup <- c("programmer", "scientist", "engineer")
colnames(mat1) <- sex
rownames(mat1) <- occup
mat1
all_prog <- sum(mat1[1,])
all_sc <- sum(mat1[2,])
all_eng <- sum(mat1[3,])
#or sumrows
all <- c(all_prog, all_sc, all_eng)
mat1 <- cbind(mat1, all)

economist <- c(123, 123, 4)
sum_ec <- sum(economist)
economist <- c(economist, sum_ec)
mat1 <- rbind(mat1, economist)
mat1['economist',]
