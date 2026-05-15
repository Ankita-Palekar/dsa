

def bruteForce(nums)
    maxSum = 0 
    for startPtr in 0...nums.length 
        currentSum = 0 
        for endPtr in startPtr...nums.length 
            currentSum += nums[endPtr]
            maxSum = [currentSum, maxSum].max
        end 
        
    end 
    puts maxSum
end 


# max sum array solved usign kadanes algo 
def kadensAlgo(nums)
    currSum = 0 
    maxSum = -Float::INFINITY  # taken for the infinity purpose
    subArr = []
    for i in 0...nums.length 
        currSum += nums[i]
        maxSum = [currSum, maxSum].max
        if currSum < 0
            currSum = 0
        end 
    end
end 


kadensAlgo([-1, -2, -3, -4])



# bruteForce([1,2,-1,2,3])