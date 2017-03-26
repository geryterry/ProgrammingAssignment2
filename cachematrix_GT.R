## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The matrix can cache the inverse 

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse 
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function
##This function will get the inverse of the matrix X from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getInverse()
if(!is.null(inv)){
  return(inv)
  }
  data<-x$get()
  inv<-solve(data)
  x$setInverse(inv)
  inv
}
