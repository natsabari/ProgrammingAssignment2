## This function test the inverse matrix caching function

testCache <- function() {
  source("cachematrix.R")
  mat <- matrix(c(1:4),nrow=2,ncol=2)
  print(mat)
  m <- makeCacheMatrix(mat)
  cacheSolve(m)
}
