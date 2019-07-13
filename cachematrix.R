## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Esta funcion permite sacar la inversa de una matriz
makeCacheMatrix <- function(x = matrix()) {
inversa <- NULL
   set <- function(y){
         x <<- y
         inversa <<- NULL
	} 
   get <- function() x 
   setInverse <- function(inverse) inversa <<- inverse
   getInverse <- function() inversa
   list (set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function
## Si la inversa de la matriz no ha cambiado, entonces 
## se recupera el inverso de la que esta en la memoria ram.

cacheSolve <- function(x, ...) {
       ## Return a matrix that is the inverse of 'x'
    inversa <- x$getInverse()
    if (!is.null(inversa)){
        message("obteniendo datos de memoria ram")
        return(inversa)
    }
    mat <- x$get()
    inversa <- solve(mat, ...)
    x$setInverse(inversa)
    inversa
}
