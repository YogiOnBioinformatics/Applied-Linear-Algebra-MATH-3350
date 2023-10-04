#################
## Question 1A ##
#################

# create matrix

A = matrix(
  c(2,-3,11, -1,4,-2, 0,4,6, 5,-7,9), 
  nrow=3, 
  ncol=4
  
)

print(A)

#       [,1] [,2] [,3] [,4]
# [1,]    2   -1    0    5
# [2,]   -3    4    4   -7
# [3,]   11   -2    6    9

B = matrix(
  c(-1,4,1,3,2,4,11,5,8,0,10,-6,13,5,-9,-1), 
  nrow=4,
  ncol=4
  
)

print(B)

#       [,1] [,2] [,3] [,4]
# [1,]   -1    2    8   13
# [2,]    4    4    0    5
# [3,]    1   11   10   -9
# [4,]    3    5   -6   -1

# multiply matrices 
print(A%*%B)

#       [,1] [,2] [,3] [,4]
# [1,]    9   25  -14   16
# [2,]    2   19   58  -48
# [3,]   14  125   94   70



#################
## Question 1B ##
#################

# install necessary packages 
install.packages("matrixcalc")
library("matrixcalc")

# run LU Matrix Factorization 
print(lu.decomposition(B))

# $L
#       [,1]      [,2] [,3] [,4]
# [1,]    1 0.0000000 0.00    0
# [2,]   -4 1.0000000 0.00    0
# [3,]   -1 1.0833333 1.00    0
# [4,]   -3 0.9166667 0.68    1
# 
# $U
#       [,1] [,2]      [,3]   [,4]
# [1,]   -1    2   8.00000  13.00
# [2,]    0   12  32.00000  57.00
# [3,]    0    0 -16.66667 -57.75
# [4,]    0    0   0.00000  25.02



#################
## Question 1C ##
#################

# find the inverse of B
print(inv(B))

#           [,1]        [,2]        [,3]        [,4]
# [1,] -0.16706635  0.38129496 -0.00399680 -0.22941647
# [2,]  0.08713030 -0.12230216  0.03796962  0.17945643
# [3,] -0.02158273  0.08992806  0.03417266 -0.13848921
# [4,]  0.06394884 -0.00719424 -0.02717826  0.03996803


################
## Question 2 ##
################

# set up transition matrix 
transition_matrix = matrix(
  c(0.5, 0.5, .20, .80), 
  nrow=2, 
  ncol=2
  
)

rownames(transition_matrix) = c("Next: Rain", "Next: No Rain")  
colnames(transition_matrix) = c("Now: Rain", "Now: No Rain")

print(transition_matrix)

#                   Now: Rain Now: No Rain
# Next: Rain          0.5          0.2
# Next: No Rain       0.5          0.8

# initial state vector made here 
# also the vector that will be calculated for each
multiplying_vector = transition_matrix %*% c(0,1)

# 6 iterations since Monday-Saturday is 6 days
for (days_since in 1:6){
  
  multiplying_vector = transition_matrix %*% multiplying_vector
  
}

print(multiplying_vector)

#                 [,1]
# Next: Rain    0.2856518
# Next: No Rain 0.7143482

# The probability that it rains the following Saturday is between 28-29%.

