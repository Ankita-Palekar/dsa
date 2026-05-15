
def max_sub_array(nums)
    nums = nums.sort 
    max_sum  = 0
    subarr = []
    nums.reverse_each do |item|
        sum = max_sum + item 
        if  max_sum < sum 
            max_sum = sum 
            subarr.push(item)
        else
            max_sum = sum
            break 
        end 
    end 

    puts nums
    # puts subarr
end

max_sub_array([-2,1,-3,4,-1,2,1,-5,4])