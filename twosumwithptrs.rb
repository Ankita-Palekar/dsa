def two_sum_two_pointers(nums, target)
 
  sorted_nums = nums.each_with_index.map { |val, idx| [val, idx] }.sort_by(&:first)
  
 
  left = 0
  right = sorted_nums.length - 1
  
  while left < right
    current_sum = sorted_nums[left][0] + sorted_nums[right][0]
    
    if current_sum == target
      # Found the pair; returning original indices
      return [sorted_nums[left][1], sorted_nums[right][1]]
    elsif current_sum < target
      # Sum too small: move left pointer right to increase value
      left += 1
    else
      # Sum too large: move right pointer left to decrease value
      right -= 1
    end
  end
  
  nil # No pair found
end

# Example usage
nums = [11, 2, 15, 7]
target = 9
p two_sum_two_pointers(nums, target) # Output: [1, 3]
