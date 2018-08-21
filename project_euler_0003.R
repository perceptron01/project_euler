num_target <- 600851475143

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

# extrat information from result
element_count <- length(primes)
element_unique_count <- length(unique(primes))

# print result
print(paste0("number of unique prime factors is ... ", element_unique_count))
print(paste0("max of the prime factors is ... ", max(primes)))

      