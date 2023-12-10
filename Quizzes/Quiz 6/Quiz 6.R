# FUNCTIONS FOR INNER PRODUCT & PROJECTION: 

inner_product = function(a, b) {
  
  value = sum(
    diag(
      t(a) %*% b
    )
  )
  
  return(value)
  
}

inner_product_projection = function(a, b) {
  
  numerator = inner_product(a, b)
  denominator = inner_product(b, b)
  
  projection = (numerator/denominator)*b

  return(projection)
  
}

##############
# Question 1 #
##############

a_matrix = matrix(c(2,5,-3,4), nrow=2, ncol=2, byrow=TRUE)
b_matrix = matrix(c(7,-4,6,11), nrow=2, ncol=2, byrow=TRUE)

projection = inner_product_projection(a_matrix, b_matrix)
print(projection)

# Projection of A onto B: 

#         [,1]       [,2]
# [1,] 0.6306306 -0.3603604
# [2,] 0.5405405  0.9909910


##############
# Question 2 #
##############

a1_matrix = matrix(c(7,12,5,-8),nrow=2,ncol=2,byrow=TRUE)
a2_matrix = matrix(c(1,0,13,5),nrow=2,ncol=2,byrow=TRUE)
a3_matrix = matrix(c(-6,14,2,19),nrow=2,ncol=2,byrow=TRUE)

orth1_matrix = a1_matrix
orth2_matrix = a2_matrix - inner_product_projection(a2_matrix, orth1_matrix)
orth3_matrix = a3_matrix - inner_product_projection(a3_matrix, orth1_matrix) - inner_product_projection(a3_matrix, orth2_matrix)

# Orthogonal basis via Gram-Schmidt Process: 

print(orth1_matrix)
#       [,1] [,2]
# [1,]    7   12
# [2,]    5   -8

print(orth2_matrix)
#         [,1]      [,2]
# [1,]  0.2056738 -1.361702
# [2,] 12.4326241  5.907801

print(orth3_matrix)
#         [,1]     [,2]
# [1,] -5.728385 15.51206
# [2,] -5.305452 14.93985

