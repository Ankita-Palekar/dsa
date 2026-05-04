# You are given a DNA sequence: a string consisting of characters A, C, G, and T. Your task is to find the longest repetition in the sequence. This is a maximum-length substring containing only one type of character.
# Input
# The only input line contains a string of n characters.
# Output
# Print one integer: the length of the longest repetition.
# Constraints

# 1 \le n \le 10^6

# Example
# Input:
# ATTCGGGA

# Output:
# 3


def rep(string)
    maxCount = 0;
    count = 0
    val = string[0]

    for i in 1...string.length
        if val == string[i]
            count += 1
        else
            maxCount = [count, maxCount].max 
            val = string[i]
            count = 1
        end
    end 
    

    puts [maxCount, count].max

end

rep("ACCCCTTTGG")