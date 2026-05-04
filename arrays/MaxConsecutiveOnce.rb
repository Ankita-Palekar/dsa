# Given a binary array arr[] consisting of only 0s and 1s, find the length of the longest contiguous sequence of either 1s or 0s in the array.

# Examples : 

# Input: arr[] = [0, 1, 0, 1, 1, 1, 1]
# Output: 4
# Explanation: The maximum number of consecutive 1’s in the array is 4 from index 3-6.

# Input: arr[] = [0, 0, 1, 0, 1, 0]
# Output: 2
# Explanation: The maximum number of consecutive 0’s in the array is 2 from index 0-1.

# Input: arr[] = [0, 0, 0, 0]
# Output: 4
# Explanation: The maximum number of consecutive 0’s in the array is 4.

def greatesConse(binaryArr)
     
    freq = 1
    maxFreq = 0 
    
     
    for i in 1...binaryArr.length 
        if binaryArr[i] == binaryArr[i-1]
            freq += 1
        else
            maxFreq = [maxFreq, freq].max
            
            freq = 1
        end

    end  

    maxOp =  [maxFreq, freq].max

    puts "  maxFreq = " + maxOp.to_s
 end


 greatesConse([1,0,1,0,0,0,0,1,1])