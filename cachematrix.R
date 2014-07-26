## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
minv <- NULL

set <- function(x) {
x <<- x
minv <<- NULL
}

get <- function() x

setinv <- function(inv = matrix()) {
minv <<- inv
}

getinv <- function() minv

matrix(c(set = set, get = get, setinv = setinv, getinv = getinv), nrow = 2, ncol = 2)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

minv <- x$getinv()

if(!is.null(minv)) {
message("retrieving inverse from cache")
return(minv)
}

matrix <- x$get()
minv <- ginv(data, ...)
x$setinv(minv)
minv
 ## Return a matrix that is the inverse of 'x'
}
