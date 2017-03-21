## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Matinv <- NULL
  set <- function(y) {
    x<<-y
    Matinv <<-NULL
    
  }
  get <- function() x
  setinv <- function(solve) Matinv <<- solve 
  getinv <- function() Matinv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Matinv <- x$getinv()
  if(!is.null(Matinv)){
        message("getting cached inv")
        return(Matinv)
  }
  data<- x$get()
  Matinv <- solve(data, ...)
  x$setinv(Matinv)
  Matinv
}
