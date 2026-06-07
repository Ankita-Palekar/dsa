def three_sum_target(nums, k)
  result = []
  n = nums.length
  return result if n < 3

  nums.sort

  (0...n - 2).each do |i|
    

    left = i + 1
    right = n - 1

    while left < right
      current_sum = nums[i] + nums[left] + nums[right]
      if current_sum == k
        result << [nums[i], nums[left], nums[right]]

        left += 1 while left < right && nums[left] == nums[left + 1]
        right -= 1 while left < right && nums[right] == nums[right - 1]

        left += 1
        right -= 1
      elsif current_sum < k
        left += 1   
      else
        right -= 1  
      end
    end
  end

 puts result
end


three_sum_target([1, 1, 1, 1, 1, 1], 2)
