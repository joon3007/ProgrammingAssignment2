## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function create special matrix that has parameter to save inverse of matrix.
makeCacheMatrix <- function(x = matrix()) {
        inverse_matrix <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        ##save inverse of matrix
        set_inverse <- function(inverse) inverse_matrix <<- inverse
        get_inverse <- function() inverse_matrix
        list(set = set, get = get,
             set_inverse = set_inverse,
             get_inverse = get_inverse)
}


## Write a short comment describing this function

## This function return inverse of x.
## if x has inverse of matrix, return immediately without needing to compute
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## if already calculated matrix, just get from x
        inverse_matrix <- x$get_inverse()
        
        if(!is.null(inverse_matrix)){
                message("getting cached data")W
                return(inverse_matrix)
        }
        # if x$get_inverse() return null, calculate inverse using solve()
        data <- x$get()
        inverse_matrix <- solve(data, ...)
        x$set_inverse(inverse_matrix)
        inverse_matrix
}
