## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  set_invmatrix <- function(Matrix) m <<- Matrix
  get_invmatrix <- function() m
  list(set = set, get = get,
       set_invmatrix = set_invmatrix,
       get_invmatrix = get_invmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		  m <- x$get_invmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  Matrix <- x$get()
  m <- solve(Matrix, ...)
  x$setmean(m)
  m
}
