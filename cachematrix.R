## makecacheMatrix creates a special matrix object which can cache its inverse.
## this function contains four functions which: 
## 1.Sets the value of a matrix(set_matrix())
## 2.Gets the value for a matrix(get_matrix())
## 3.Sets the value of the inverse(set_inverse())
## 4.Gets the value of the inverse(get_inverse())
## makecacheMatrix takes a matrix x as an argument and returns a list of functions.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL; #set the inverse to null
    set_matrix <- function(arg_1) { 
        x <<- arg_1 #set the value of the matrix to the argument passed 
        Inverse <<- NULL
    }
    get_matrix <- function() x #gets the value of the matrix
    set_inverse <- function(inverse_arg) inverse <<- inverse_arg #set the inverse 
    get_inverse <- function() inverse  #get and return the inverse 
    list(set_matrix = set_matrix, get_matrix = get_matrix, set_inverse = set_inverse, get_inverse = get_inverse) #retruns a list of functions 
}   #return a list of functions

## cacheSolve is used to compute the inverse of a matrix which was created with makeCacheMatrix()
## cacheSolve first checks whether the inverse has already been computed and if not proceeds
## to retrieve the inverse from cache memory.
## cacheSolve takes a matrix as argument and returns the inverse of this matrix 

cacheSolve <- function(x, ...) {
    inverse_soln <- x$get_inverse() #get the inverse 
    if(!is.null(inverse_soln)) {    #test to see whether the inverse has already been computed 
        message("getting cached data") 
            return(inverse_soln)
    }
    matrix_data <- x$get_matrix()   #get matrix data 
    inverse_soln <- solve(matrix_data)     #compute the inverse of the matrix 
    x$set_inverse(inverse_soln)     #set the inverse 
    inverse_soln                    #return the inverse 
        
}
