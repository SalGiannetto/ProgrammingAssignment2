## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      m<-NULL
      #function definition to set values of matrix
      set<-function(y){
            x<<-y
            m<<-NULL #clear the cash
      }
      #function to get values of matrix
      get <-function () x
      #function to get inverse, it works when there's no the inverse on cache
      setsolve<-function(solve) m <<-solve
      #function to calculate the inverse
      getsolve<-function() m
      #list with four functions above
      list (set=setsolve, get=getsolve,
            setsolve=setsolve, getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         m<-x$getsolve() #
         if(!is.null(m)) {#retrieve of cached matrix in memory
           message("getting cached matrix")
           return(m)
         }
         #in case of empty cashe
         data<-x$get() #get matrix's value
         m<-solve(data,...)#calculate the inverse
         x$setsolve(m)#cache result
         m #return the inverse
        ## Return a matrix that is the inverse of 'x'
}
