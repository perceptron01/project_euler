#最大公倍数
gcd <- function(m,n){
  while (n != 0){
    r <- m %% n
    m <- n
    n <- r
  }
  return(m)
}


#最小公倍数