# set parameters
nth_prime <- 10001

# define functions
## Determine prime number
is_prime <- function(num){
  if (num < 2) {return(FALSE)}
  else if (num == 2) {return(TRUE)}
  else if (num %% 2 == 0) {return(FALSE)}
  
  max_divisor_candidate <- sqrt(num)
  for (ii in seq(3, max_divisor_candidate, 2)){
    if (num %% ii == 0){return(FALSE)}
  }
  return(TRUE)
}

# add primenumbers
add_prine_numbers <- function(n_primes){
  prime_list <- numeric(n_primes)
  ind_prime <- 1
  while(ind_prime <= n_primes){
    if (is_prime() == TRUE){
      prime_list[ind_prime] <- 
      ind_prime <- ind_prime + 1
      
    }
  }
}