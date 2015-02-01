# The cacheSolve function first checks to see if the inverse has already been calculated
# else it calculates the inverse of a matrix created with makeCacheMatrix
cacheSolve <- function(y, ...) {
  
      # Fetch the cached inverse value
      inverse <- y$getInverse()
      # Check and return if inverse already exists in cache
      if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
      } 
              
      # Else proceed to get the new matrix, calculate the inverse and store it in the cache
      data <- y$getMatrix()
      inverse <- solve(data)
      y$setInverse(inverse)
  
      # Return the inverse
      inverse
}