## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Write a short comment describing this function
        #sets the matrix
        #gets the matrix
        #sets (->caches) the inverse of the matrix
        #gets the cached inverse of the matrix
        invertedMatrix<-NULL
        setMatrix<-function(y) {
                x<<-y
                invertedMatrix<<-NULL
        }
        getMatrix<-function() x
        CacheInvMatrix<-function(solve) invertedMatrix<<-solve
        GetInvMatrix<-function() invertedMatrix
        list(setMatrix=setMatrix,getMatrix=getMatrix,CacheInvMatrix=CacheInvMatrix,GetInvMatrix=GetInvMatrix)
}
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #try to get the cached inverted matrix
        #else, invert the matrix
        invertedMatrix<-x$GetInvMatrix()
        if(!is.null(invertedMatrix)){
                message("getting cached data")
        return(invertedMatrix)
        }
        data<-x$getMatrix()
        invertedMatrix<-solve(data,...)
        x$setMatrix(invertedMatrix)
        invertedMatrix
}
