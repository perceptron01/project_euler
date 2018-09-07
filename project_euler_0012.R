# set paramters 
threshold <- 500
# generate function
## list prime factors
list_prime_factors <- function(num_target){
  # initilaize variables
  primes <- numeric(1)
  ind_prime <- 1
  ii <- 2
  
  # find prime factors
  while (num_target > 1){
    if (num_target %% ii == 0){
      primes[ind_prime] <- ii
      num_target <- num_target / ii
      ind_prime <- ind_prime + 1
    } else {
      ii <- ii + 1
    }
  }
  return(primes)
}

## count number of divisors
num_divisors <- function(primes){
  unique_num_primes <- as.vector(table(primes))
  num_divisors <- prod(unique_num_primes + 1)
  return(num_divisors)
}

# findthe first triangle number to have over five hundred divisors
nth <- 1
while (1){
  triangle_number <- sum(1:nth)
  list_prime <- list_prime_factors(triangle_number)
  num_divi <- num_divisors(list_prime)
  if(num_divi > threshold) {break} else {nth <- nth +1}
}

print(paste0("The answer is ... ", triangle_number))
