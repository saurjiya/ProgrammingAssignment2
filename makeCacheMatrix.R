# makeCacheMatrix is a function that creates a special "matrix" which is
# a list containing following functions:
# 1. setMatrix      set the value of a matrix
# 2. getMatrix      get the value of a matrix
# 3. setInverse     set the cached value (inverse of the matrix)
# 4. getInverse     get the cached value (inverse of the matrix)
# Its purpose is to store a matrix and a cached value of the inverse of the matrix. 
makeCacheMatrix <- function(x = numeric()) {
  
      # Holds the cached value or NULL if nothing is cached
      cache <- NULL
  
      # Store a matrix
      setMatrix <- function(newValue) {
        x <<- newValue
        # since the matrix is assigned a new value, flush the cache
        cache <<- NULL
      }
      # Returns the stored matrix
      getMatrix <- function() x

      # Set the cache inverse value
      setInverse <- function(solve) cache <<- solve
      # Fetch the cached inverse value
      getInverse <- function() cache
  
      # return a list. Each named element of the list is a function
      list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}
