# set parameters
max_div <- 20

# define functions
## greatest common divisor
gcd <- function(m,n){
  while (n != 0){
    r <- m %% n
    m <- n
    n <- r
  }
  return(m)
}

## least common multipl
lcm <- function(m,n){
  l <- m * n / (gcd(m, n))
  return(l)
}

# find Smallest multiple
smallest_mltiple <- 1

for( ii in seq(1:max_div) ){
  smallest_mltiple <- lcm(ii, smallest_mltiple)
}

print(paste0("The answer is ... ", smallest_mltiple))
