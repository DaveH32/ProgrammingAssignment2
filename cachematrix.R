## Put comments here that give an overall description of what your
## functions do

## makecacheMatrix creates a special matrix object which can cache its inverse.
## this function contains four functions which: 
## 1.Sets the value of a matrix
## 2.Gets the value for a matrix
## 3.Sets the value of the inverse
## 4.Gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL;
    set_matrix <- function(arg_1) {
        x <<- arg_1
        Inverse <<- NULL
    }
    get_matrix <- function() x
    set_inverse <- function(inverse_arg) inverse <<- inverse_arg
    get_inverse <- function() inverse
    list(set_matrix = set_matrix, get_matrix = get_matrix, set_inverse = set_inverse, get_inverse = get_inverse)
}


## cacheSolve takes a matrix as argument and returns the inverse of this matrix 

cacheSolve <- function(x, ...) {
    inverse_soln <- x$get_inverse()
    if(!is.null(inverse_soln)) {
        message("getting cached data")
            return(inverse_soln)
    }
    data <- x$get_matrix()
    inverse_soln <- solve(data)solve
    x$set_inverse(inverse_soln)
    inverse_soln
    
        ## Return a matrix that is the inverse of 'x'
}
