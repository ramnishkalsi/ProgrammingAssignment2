## Put comments here that give an overall description of what your
## functions do

## This function has following inner functions:
## 1. get the value of matrix
## 2. set the value of matrix
## 3. set the inverse of the matrix
## 4. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, 
       get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
}


## Return the inverse of the matrix

cacheSolve <- function(x, ...) {  
  inv <- x$getinverse()
  
  if(!is.null(inv)) {
    message("data present in cache")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
