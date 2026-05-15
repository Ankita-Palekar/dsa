# we are using the same kadens algo but in a modified way
def max_product(nums)

    max_product = -Float::INFINITY # taken for the infinity purposes.
    curr_max_product = 1 
    curr_min_product = 1
    
    for i in 0...nums.length 
        curr_max_product *= nums[i]
        max_product = [curr_max_product, max_product].max

        # if its negative then store that in min since it can become biggest positive anytime
        if curr_max_product < 0 

            if  curr_min_product < 0 
                curr_min_product *= curr_max_product 
                max_product = [curr_min_product, max_product].max
            else
                curr_min_product = curr_max_product 
            end 

            curr_max_product = 1
        elsif curr_max_product == 0 
            curr_max_product = 1
            curr_min_product = 1 
        end 
    end
    
    puts max_product
end 


max_product([-2,-3,7])