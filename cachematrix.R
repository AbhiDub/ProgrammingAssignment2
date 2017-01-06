## Put comments here that give an overall description of what your
## functions do

## Below function will cache the values
makeCacheMatrix <- function(x = matrix()) {

 m <- NULL
  set <- function(y) {
         x <<- y
	        m <<- NULL
		 }
		  get <- function() x
		   setinverse <- function(solve) m <<- solve
		    getinverse <- function() m
		     list(set = set, get = get,
		           setinverse = setinverse,
			         getinverse = getinverse)


}


## Below function checks if cached and if not will return inverse
cacheSolve <- function(x, ...) {


        ## Return a matrix that is the inverse of 'x'
z <- x$getinverse()
if(!is.null(z)) {
      message("data is here")
            return(z)
	    }
	    data <- x$get()
	    z <- solve(data, ...)
	    x$setinverse(z)
	    z

}
