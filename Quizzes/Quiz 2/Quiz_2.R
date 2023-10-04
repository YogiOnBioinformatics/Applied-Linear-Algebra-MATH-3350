# install necessary packages 
install.packages("matlib")
library("matlib")

################
## Question 1 ##
################

# create matrix

q1_matrix = matrix(
  
  c(2, -4, 1, 0, 7, 2, 0, -4, 0, 1, -1, 9, 11, 3, -6, -5), 
  nrow=4, 
  ncol=4
  
)

print(q1_matrix)

#       [,1] [,2] [,3] [,4]
# [1,]    2    7    0   11
# [2,]   -4    2    1    3
# [3,]    1    0   -1   -6
# [4,]    0   -4    9   -5

# transform matrix to row-echelon form

q1_echelon = echelon(q1_matrix, reduced=FALSE)

print(q1_echelon)

#       [,1] [,2]    [,3]       [,4]
# [1,]    1 -0.5 -0.2500 -0.7500000
# [2,]    0  1.0  0.0625  1.5625000
# [3,]    0  0.0  1.0000  0.1351351
# [4,]    0  0.0  0.0000  1.0000000

# As each row has a pivot in the row-echelon form of the matrix, these set of vectors span R^4. 


################
## Question 2 ##
################

# create matrix

q2_matrix = matrix(
  c(3,1,3,-2,3,1,4,-3,3,1,-1,-2), 
  nrow=4, 
  ncol=3
)

print(q2_matrix)

#       [,1] [,2] [,3]
# [1,]    3    3    3
# [2,]    1    1    1
# [3,]    3    4   -1
# [4,]   -2   -3   -2


# transform matrix to row-echelon form

q2_echelon = echelon(q2_matrix, reduced=FALSE)

print(q2_echelon)

#       [,1] [,2] [,3]
# [1,]    1    1    1
# [2,]    0    1   -4
# [3,]    0    0    1
# [4,]    0    0    0

# This linear transformation is one-to-one as the matrix "A" has pivots in all columns. 