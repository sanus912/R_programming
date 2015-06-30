add2 <- function(x,y){
    x + y
}

above10 <- function(x){
    use <- x > 10
    x[use]
}

above <- function(x,n = 10){
    use <- x>n
    x[use]
}

above1 <- function(y=10,x,...){
    above(11,...)
    print(y)
}

columnmean <- function(x,removeNA = TRUE){
    nc <- ncol(x)
    means <- numeric(nc)
    for (i in 1:nc)
    {
        means[i] <- mean(y[,i],na.rm = removeNA)
    }
    means
}

f <- function(x){
    y <- 2
    y^2 + g(x)
}

g <- function(x){
    x*y
}

y <- 10