# set parameters
prime_below <- 2 * 1000 * 1000

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
list_prine_numbers <- function(max_primes){
  prime_list <- numeric(max_primes)
  prime_list[1] <- 2
  ind_prime <- 2
  num_candidate <- 3
  
  while(num_candidate <= max_primes){
    if (is_prime(num_candidate) == TRUE){
      prime_list[ind_prime] <- num_candidate
      ind_prime <- ind_prime + 1
      
    }
    num_candidate <- num_candidate + 2
  }
  prime_list <- prime_list[1:(ind_prime-1)]
  return(prime_list)
}

# sum of all the primes below two million
sum_of_all <- sum(list_prine_numbers(prime_below))
print(paste0("sum of all the primes is ... ", sum_of_all))
