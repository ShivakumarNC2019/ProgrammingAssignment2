c## The below function creates the inverse of the matrix using cache memory

## Function creation for inverse matrix calculation

makeCacheMatrix <- function(x = matrix()) {
   m<-NULL
   set<-function(y){
           x<<-y
           m<<-NULL
    }
    get<-function() x 
        setinverse<-function(inverse)
                getinverse<-function()m
                list(set=set,get=get,
                     setinverse=setinverse,
                     getinverse=getinverse)
}
        


## Checks for inverse of matrix in cache memory and gives the output

cacheSolve <- function(x, ...) {
       m<-x$getinverse()
        if(!is.null(m)){
                message("getting cached data")
                return (m)
         data<-x$get()
                m<-solve(data,...)
                x$setinverse(m)
                m
}
