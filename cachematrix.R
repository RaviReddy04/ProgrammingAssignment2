## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  #method to set the matrix
  set <- function(matrix){
    m <<- matrix
    inv <- NULL
  }
  # method to get the matrix
  get <- function(){
    m
  }
  # method to set the inverse of the matrix
  setInverse <- function(inverse){
    inv <<- inverse
  }
  
  # method to get the inverse of the matrix
  getInverse <- function(){
    inv
  }
  
  #return list of methods
  list(set= set, get=get, setInverse= setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m<- x$getInverse()
  
  #return inverse  if present 
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  #method to inverse the matrix if not present and set it 
  sampMatr <- x$get()
  m <- solve(sampMatr) %*% sampMatr
  x$setInverse(m)
  m
}
