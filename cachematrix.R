## In this code the first funcation makes a matrix of functions which are used to cache the inverse
## of a matrix. These are four function set, get, setinv and getinv which are used in caching the 
## inverse of a matrix. The second function basically calculates the inverse of the matrix and
## calls makeCacheMatrix to cache that inverse matrix. It also checks if the inverse is already
## calculated and returns the cached value if it is.


## This is the first function which returns a 2 x 2 matrix of functions: set, get, setinv and getinv
## set and setinv are used to set the values of x and the inverse respectively.
## get and getinv are used to get the values of x and the inverse respectively

makeCacheMatrix <- function(x = matrix()) {
minv <- NULL

set <- function(y = matrix()) {
x <<- y
minv <<- NULL
}

get <- function() {
x
}

setinv <- function(inv = matrix()) {
minv <<- inv
}

getinv <- function() {
minv
}

matrix(c(set = set, get = get, setinv = setinv, getinv = getinv), nrow = 2, ncol = 2)
}


## This function calculates the inverse and stores it by calling makeCacheMatrix

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
