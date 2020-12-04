## Put comments here that give an overall description of what your
## functions do

## Expect the matrix supplied is invertible, using inv <- NULL (because value is undefined)
## Then we set the value of the matrix with the function set()
## Get the value of the matrix and the inverse
makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
## inv returns a matrix that is inverse of X
## It return the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv    
}
