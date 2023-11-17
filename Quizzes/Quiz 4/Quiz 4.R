################
## Question 1 ##
################

q1_matrix = matrix(
  c(5,-11,-23,1, 1, 8, -19, -5, -14, 6, 7, 2, 3, -9, -4, 6), 
  nrow=4, 
  ncol=4, 
  byrow=T
)
q1_matrix

#       [,1] [,2] [,3] [,4]
# [1,]    5  -11  -23    1
# [2,]    1    8  -19   -5
# [3,]  -14    6    7    2
# [4,]    3   -9   -4    6

b_vector = c(0, 7, 16, 6)
b_vector

# to calculate x3: 
# we replace the 3rd column of `q1_matrix` with the b_vector
# take the determinant of this new matrix and 
# divide it by the determinant of the original q1_matrix 

q1_matrix_column_3_replaced = q1_matrix
q1_matrix_column_3_replaced[,3] = b_vector

q1_matrix_column_3_replaced

#       [,1] [,2] [,3] [,4]
# [1,]    5  -11    0    1
# [2,]    1    8    7   -5
# [3,]  -14    6   16    2
# [4,]    3   -9    6    6

det(q1_matrix_column_3_replaced)/det(q1_matrix)

# -0.5895204


#################
## Question 2A ##
#################

q2_matrix = matrix(
  c(-92, -157, 488, 1723, -404, -659, 2080, 7372, -507, -827, 2609, 9245, 102, 166, -524, -1857), 
  nrow=4, 
  ncol=4, 
  byrow=TRUE
)
q2_matrix

#       [,1] [,2] [,3]  [,4]
# [1,]  -92 -157  488  1723
# [2,] -404 -659 2080  7372
# [3,] -507 -827 2609  9245
# [4,]  102  166 -524 -1857

eigen = eigen(q2_matrix)

# the P matrix is: 
eigen$vectors

#         [,1]       [,2]       [,3]       [,4]
# [1,] -0.1524986 -0.6444022 -0.1925717 -0.6167529
# [2,] -0.6099943  0.3682298 -0.6105202  0.1765717
# [3,] -0.7624929  0.6444022 -0.7539375  0.7333838
# [4,]  0.1524986 -0.1841149  0.1475105 -0.2249144


# the D matrix is: 
diag(eigen$values)
 
#       [,1] [,2] [,3] [,4]
# [1,]   -3    0    0    0
# [2,]    0    2    0    0
# [3,]    0    0    1    0
# [4,]    0    0    0    1


#################
## Question 2B ##
#################

# install the matlib package
install.packages("fastmatrix")
library("fastmatrix")

power_iteration = power.method(q2_matrix, maxiter=20)

# Approximate dominant eigenvalue
power_iteration$value

# -3.000064

# Corresponding eigenvector for approximate dominant eigenvalue:
power_iteration$vector

# 0.1525134  0.6099948  0.7624898 -0.1524969
