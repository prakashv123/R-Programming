## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Make a matrix in the cache which can be reversed
makeCacheMatrix <- function(x = matrix()) {
 cachedInverse <- NULL
  set <- function(y) {
    x <<- y
    cachedInverse <<- NULL
  }
  get <- function() x
  ##Set the inversed matrix in the cache
  setInverse <- function(inverse) cachedInverse <<- inverse
  getInverse <- function() cachedInverse
  ##list the matrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
##Reverses the cached matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invFunc <- x$getInverse()
  if(!is.null(invFunc)) {
    message("getting cached data")
    return(invFunc)
  }
  ##get the data from the matrix
  data <- x$get()
  ##set the data for inverse
  invFunc <- solve(data, ...)
  x$setInverse(invFunc)
  invFunc
}
