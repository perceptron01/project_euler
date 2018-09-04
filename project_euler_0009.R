#  set parameters
n = 1000

# define function 
is_pythagorean <- function(a, b, c){
  return((a^2 + b^2 == c^2))
}


# search pythagorean satisfying the condition
seq_candidate <- seq(1,n)
pythagorean <- numeric(3)
for (a in 1:n-2){
  for (b in (a+1):n-1){
    c <- n - a - b
    if (is_pythagorean(a, b, c)){
      pythagorean <- c(a,b,c)
      break;
    }
  }
}

# answer
print(paste0("(a, b, c) = (", paste(pythagorean, collapse = ', '), ")"))
print(paste0("The aswer is ... ", prod(pythagorean)))
      
      