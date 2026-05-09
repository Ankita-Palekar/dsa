def checkPalliondrome(str)\


    
    startPtr = 0 
    endPtr = str.length - 1
    
    check = 0

    for i in 0...str.length
            if(str[startPtr] == str[endPtr])
                startPtr += 1
                endPtr -= 1    
            else
                check = 1
                break 
            end 
    end 


    puts (check == 1 ? "Non Palliondrome" : "palliondrome")


end


# checkPalliondrome("ababa")


def makePalliondrome(str)
    sortedStr = str.chars.sort.join 
     
    i = 0;

    newStr = []
    

    if sortedStr.length % 2 == 0 
        index = sortedStr.length / 2 
    else
        index =  (sortedStr.length / 2 + 1) 
    end 
    

    puts sortedStr

    while i < index
        
        puts i
        newStr[i] = sortedStr[i];
        if(sortedStr[i+1] != nil)
            newStr[sortedStr.length  - i -1] = sortedStr[i+1]
        end
        
        
        i += 1
    end

    puts newStr.join("")


end 

makePalliondrome("aaab")


# Given a string, your task is to reorder its letters in such a way that it becomes a palindrome (i.e., it reads the same forwards and backwards).
# Input
# The only input line has a string of length n consisting of characters A–Z.
# Output
# Print a palindrome consisting of the characters of the original string. You may print any valid solution. If there are no solutions, print "NO SOLUTION".
# Constraints

# 1 \le n \le 10^6

# Example
# Input:
# AAAACACBA

# Output:
# AACABACAA




