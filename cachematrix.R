## Put comments here that give an overall description of what your
## functions do

## The two functions are makeCacheMatrix and cacheSolve
## The function makeCacheMatrix compose of set, get, setInverse, getInverse
## This used to calculate inverse and matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL 
set <- function (y) {
  x <<- y
  inv <<- NULL
}
get <- function() x #function to get the matrix
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}

## Write a short comment describing this function
## This is where used to solve cache data 

cacheSolve <- function(x, ...) { #get cached data
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse ()
  if(!is.null(inverse)) { #check if the inverse is a null value
    message ("getting cached data") 
    return(inv) #return the inverse value
  }
  data <- x$get()
  inv <- inv(x, ...)
  x$setInverse(inv)
  inv
}
