require(stringr)
require(stringi)

digit <- 3
num_min <- 10 ^ (digit-1)
num_max <- 10 ^ digit -1

seq_candidate <- seq(num_max ^ 2, num_min ^ 2, -1)
seq_element <- seq(num_min, num_max)

is_palindromic = function(x){
  x_str = as.character(x)
  return( x_str == stri_reverse(x_str) )
}

is_same_digit <- function(x1, x2){
  return(
    nchar(as.character(x1)) == nchar(as.character(x2))
  )
}

is_same_digit_product <- function(x1, x2){
  return(
    ( x1 %% x2 == 0 ) & ( is_same_digit(x1/x2, x2) )
  )
}

for ( ii in seq_candidate ){
  if ( is_palindromic(ii) ){
    for ( jj in seq_element ){
      if ( is_same_digit_product(ii,jj) ){
        print(paste0(
          "candidate = ", ii,
          ", pair of numbers = (", jj, ", ", ii/jj, ")")
          )
        break;
      }
    }
    if ( is_same_digit_product(ii,jj) ){
      break;
    }
  }
}