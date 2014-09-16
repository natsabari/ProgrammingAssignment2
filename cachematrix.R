## The below functions use to create cache functionality for getting 
## Inverse of Matrix faster

## makeCacheMatrix would craete list of below functions 
## get - get underlying matrix
## set- set underlying matrix
## getSolve - get stored inverse of given matrix
## setsolve - set inverse of given matrix in cache

makeCacheMatrix <- function(x = matrix()) {
  so <- NULL
  set <- function(y) {
    x <<- y
    so <<- NULL
  }
  get <- function() x
  setsolve <- function(solve ) so <<- solve
  getsolve <- function() so
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## cacheSolve accepts matrix type of "makeCacheMatrix" 
## and returns inverse of given Matrix
## it first look into cache for invrse of given matrix 
## if cache doesnt contain any inverse of the given matrix 
## and it invoke solve on matrix  and stroes that matrix 
## into cache before returning

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  so <- x$getsolve()
  if(!is.null(so)) {
    message("getting cached data")
    return(so)
  }
  data <- x$get()
  so <- solve(data, ...)
  x$setsolve(so)
  so
}
