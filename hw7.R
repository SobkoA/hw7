#Problem 1z
A <- matrix(c(5,1,-2,2,0,1,0,-1,1), 3,3, byrow = TRUE)
B <- matrix(c(4,1,2,0,2,-1,1,-2,2), 3,3, byrow = TRUE)

(C <- A + B)
(D <- A - B)
(E <- A %*% B)
(F <- B %*% A)
(G <- D %*% D)
(H <- A^2 - 2* A%*%B + B^2)


#Problem 2
A1 <- matrix(c(2,1,-2,4,0,1,1,-1,1),3,3,byrow = TRUE)
A2 <- matrix(c(3,-1,2,4,2,-4,2,0,2),3,3,byrow = TRUE)
A1
all(A1 == t(A1))
all(A2 == t(A2))
all(t(A1)%*% A1 == t(t(A1)%*% A1))
all(A2%*% t(A2) == t(A2%*% t(A2)))

#Problem 3

P<- matrix(c(4,2,0,2,3,0,1,2),2,4,byrow = TRUE)
Q<- matrix(c(1,0,2,0,0,0,0,4,1,0,2,0,0,3,0,0),4,4,byrow = TRUE)
P
Q

R <- P %*% Q
"the num of flights from the corresponding airport"
rowSums(P)
rowSums(Q)
rowSums(R)
"the num of flights to the corresponding airport"
colSums(P)
colSums(Q)
colSums(R)

#Problem 4

Ps <- t(P / rowSums(P))
Ps
Qs <- t(Q / rowSums(Q))
a <- matrix(c(0.4,0.6), nrow = 2)
Qs %*% Ps %*% a

#Problem 7
matPow <- function(A,k){
  B = A%*%A
  for (k in 3:k) {
   B = B %*% A
  }
  return(B)
}
A <- matrix(1:9, ncol = 3)
matPow(A,4)


