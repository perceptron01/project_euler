# define functions
sum_of_squares <- function(num_vec){
  return(sum(num_vec^2))
}

square_of_sum <- function(num_vec){
  return(sum(num_vec)^2)
}

diff_sum_square <- function(num_vec){
  return(
    square_of_sum(num_vec) - sum_of_squares(num_vec)
  )
}

# set parameters
max_num <- 100
num_vec <- seq(1:max_num)

# find Sum square difference
Sum_square_difference <- diff_sum_square(num_vec)

print(paste0("The answer is ... ", Sum_square_difference))
