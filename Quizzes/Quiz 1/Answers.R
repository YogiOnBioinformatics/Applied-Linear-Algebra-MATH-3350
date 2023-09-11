################
## Question 1 ##
################

coefficients = matrix(
  c(5,-11,-23,1,1,8,-19,-5,-14,6,7,2,3,-9,-4,6), 
  nrow=4, 
  ncol=4, 
  byrow=TRUE
)

print(coefficients)

#       [,1] [,2] [,3] [,4]
# [1,]    5  -11  -23    1
# [2,]    1    8  -19   -5
# [3,]  -14    6    7    2
# [4,]    3   -9   -4    6

right_hand_side = c(0, 7, 16, 6)

print(right_hand_side)

# [1]  0  7 16  6

solve(coefficients, right_hand_side)

# [1] -0.5115369  1.2488463 -0.5895204  2.7360243

################
## Question 2 ##
################

# install the necessary package and load
install.packages("Rlinsolve")
library("Rlinsolve")

coefficients = matrix(
  c(7,-1.5,5,1,4,2.6,3,1,-4.3), 
  nrow=3,
  ncol=3,
  byrow=TRUE
)

print(coefficients)

#       [,1] [,2] [,3]
# [1,]    7 -1.5  5.0
# [2,]    1  4.0  2.6
# [3,]    3  1.0 -4.3

right_hand_side = c(-2,2.7,-4)

print(right_hand_side)

# [1] -2.0  2.7 -4.0

start_vector= c(0,0,0)

print(start_vector)

# [1] 0 0 0

jacobi_solved = lsolve.jacobi(coefficients, right_hand_side, xinit=start_vector, maxiter=1000)

print(jacobi_solved$x)

#       [,1]
# [1,] -0.6135776
# [2,]  0.4414567
# [3,]  0.5931870
