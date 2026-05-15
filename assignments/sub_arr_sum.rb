def subarray_sum(nums, k)
    count = 0
    running_sum = 0
    prefix_sums = Hash.new(0)
    prefix_sums[0] = 1

    
    nums.each do |num|
        running_sum += num
        if prefix_sums.key?(running_sum - k)
            count += prefix_sums[running_sum - k]
        end

        prefix_sums[running_sum] += 1
    end

    puts count
end 


subarray_sum( [1, 1, 1], 2)