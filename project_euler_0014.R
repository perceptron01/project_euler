# generate function
## generate Collatz number
Collatz <- function(n){
  if (n %% 2 == 0){
    n_next <- n/2
  } else {
    n_next <- 3*n + 1
  }
  return(n_next)
}

n_start <- 1
n_start_largerst <- 100*10000
start_list <- []

# select start number
while(1){
  start_list <- append(start_list, n_start)
  Collatz_sequence <- []
    while (1) {
      Collatz_sequence <- appned(Collatz_sequence, )
      n_member <- Collatz(n)
      if (n_member == 1) {break}
  }
  
  if (n_start > n_start_largerst) {break}
  n_start <- 
}
