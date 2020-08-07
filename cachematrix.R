## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  # Define cache
  cache <- NULL
  

  # Initial a matrix
  set<-function(matrix){
    x<<-matrix
    cache<-NULL
  }
  
  get<-function(){
    return(x)
  }
  
  setInverse<-function(inverse){
    cache <<- inverse
    return(cache)
  }
  
  getInverse<-function(){
    cache
  }
  
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function
## The x here is an makeCacheMatrix object
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$get()
  inv = x$getInverse()
  if (is.null(inv)) {
    inv = solve(mat)
    x$setInverse(inv)
  }else{
    print("The inverse has been saved in the cache")
  }
  return(inv)
}
