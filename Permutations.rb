# A permutation of integers 1,2,\ldots,n is called beautiful if there are no adjacent elements whose difference is 1.
# Given n, construct a beautiful permutation if such a permutation exists.
# Input
# The only input line contains an integer n.
# Output
# Print a beautiful permutation of integers 1,2,\ldots,n. If there are several solutions, you may print any of them. If there are no solutions, print "NO SOLUTION".
# Constraints

# 1 \le n \le 10^6

# Example 1
# Input:
# 5

# Output:
# 4 2 5 3 1
# Example 2
# Input:
# 3

# Output:
# NO SOLUTION

# https://cses.fi/problemset/task/1070




def permutations(n)
    highestOdd = 0
    highestEven = 0 

    if n == 3 || n == 2  
        puts "No solution"
    end 

    if(n%2 == 0)
        highestEven = n
        highestOdd = n - 1 
    else 
        highestOdd = n
        highestEven = n - 1
    end 

    until highestOdd <= 0 
        puts highestOdd 
        highestOdd -= 2
    end 

    until highestEven <= 0 
        puts highestEven 
        highestEven -= 2
    end 



end 

permutations(7)