## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#Creating a list of functions which include setting and getting the matrix
#and also setting (storing) and getting the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  
  inv<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<function() {x}
  setinv <- function(inverse) {inv<<-inverse }
  getinv <- function() {inv}
  list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function
##this function retrieves the stored inverse of matrix if any
#otherwise calcultes a new one and then stores it 

cacheSolve <- function(x, ...) {
  
  inv <- x$getinv()
  if(!is.na(inv)){
    message("Retrieving cahced data")
    return(inv)
  }
  
  data<-x$get()
  inv<-solve(data,...)
  x$setinv(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
