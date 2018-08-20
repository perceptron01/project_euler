# set paramters
first_term <- 1
second_term <- 2
max_term <- 4 * 10^6

# generate Fibonacci sequence
Fibonacci_sequence <- function(first_term, second_term, max_term){
  fibo_seq <- numeric(max_term)
  fibo_seq[1] <- first_term
  fibo_seq[2] <- second_term
  
  ii <- 3
  while(1){
    next_term <- fibo_seq[ii-1] + fibo_seq[ii-2]
    if (next_term > max_term) {break}
    
    fibo_seq[ii] <- next_term
    ii <- ii + 1
  }
  
  return(fibo_seq[1:ii-1])
}

fibo_seq <- Fibonacci_sequence(first_term, second_term, max_term)

# extrarct terms which match the condition to caliculate answer
ind_even <- fibo_seq %% 2 == 0
answer <- sum(fibo_seq[ind_even])

print(paste0("The answer is ... ", answer))
