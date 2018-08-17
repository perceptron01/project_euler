div1 <- 3
div2 <- 5
below <- 1000

n_div1 <- (below-1) %/% div1
n_div2 <- (below-1) %/% div2

multiples1 <- seq(1:n_div1) * div1
multiples2 <- seq(1:n_div2) * div2

multiples12 <- unique(c(multiples1, multiples2))

ans <- sum(multiples12)

print(paste0("The anstwer is ", ans))
