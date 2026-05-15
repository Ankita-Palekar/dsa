# Logic here is to first find out if there are any zeros or not . If there is 1 zero that means 
# Only that index will be with some product, if 2 zeros all index wil be zero and 
# If non zero array then first product will be the product of all after that it will be divisible of the 
# index of that number 


def product_except_self(nums)
    zeros = 0
    product = 1
    arr = [] 
    for i in 0...nums.length 
        if nums[i] == 0 
            zeros += 1
            index = i 
        else
            product *= nums[i] 
        end 
    end 

    if zeros > 1
        arr = Array.new(nums.length, 0)
    elsif zeros == 1
        arr =  Array.new(nums.length, 0)
        arr[index] = product
    else
        
        for i in 0...nums.length 
            arr[i] = product / nums[i]
        end 
    end 
    return arr    
end 



product_except_self([4,3,2,1,2])