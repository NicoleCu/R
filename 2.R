n <- 1000000
x <- runif(n)
dice_roll <- function(n) {
  ifelse (x < 1/6, 1,
          ifelse (x < 2/6, 2,
                  ifelse(x < 3/6, 3,
                         ifelse(x < 4/6, 4,
                                ifelse(x < 5/6, 5, 6))))) 
  
}
dice_roll(x)

dice_roll <- function(n) { sample(1:6, n, replace = TRUE)
  }