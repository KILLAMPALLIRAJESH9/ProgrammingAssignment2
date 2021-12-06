## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(i = matrix()) {
        inv <- NULL
        set <- function(j) {
                i <<- j
                inv <<- NULL
  }
  get <- function() i
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(i, ...) {
  inv <- i$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix_to_invert <- i$get()
  inv <- solve(matrix_to_invert, ...)
  i$setinverse(inv)
  inv      ## Return a matrix that is the inverse of 'i'
        
}
