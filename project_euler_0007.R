# set parameters
nth_prime <- 10001

# define functions
## Determine prime number
is_prime <- function(num){
  if (num < 2) {return(FALSE)}
  else if (num == 2 | num == 3) {return(TRUE)}
  else if (num %% 2 == 0) {return(FALSE)}
  
  max_divisor_candidate <- max(sqrt(num), 3)
  for (ii in seq(3, max_divisor_candidate, 2)){
    if (num %% ii == 0){return(FALSE)}
  }
  return(TRUE)
}

# list prime numbers
list_prine_numbers <- function(n_primes){
  prime_list <- numeric(n_primes)
  prime_list[1] <- 2
  ind_prime <- 2
  num_candidate <- 3
  
  while(ind_prime <= n_primes){
    if (is_prime(num_candidate) == TRUE){
      prime_list[ind_prime] <- num_candidate
      ind_prime <- ind_prime + 1
      
    }
    num_candidate <- num_candidate + 2
  }
  return(prime_list)
}

# find the 10001st prime number
target_prime <- list_prine_numbers(nth_prime)[nth_prime]
print(paste0(nth_prime, "th prime number is ... ", target_prime))
