require "set"
def four_sum(nums, target)
  result = Set.new
  len = nums.length
  
  counts = Hash.new(0)
  nums.each { |num| counts[num] += 1 }

  (0...len).each do |i|
    (i + 1...len).each do |j|
      (j + 1...len).each do |k|
        
        a = nums[i]
        b = nums[j]
        c = nums[k]
        
        remaining = target - (a + b + c)

        if counts.key?(remaining)
          required_count = 0
          required_count += 1 if remaining == a
          required_count += 1 if remaining == b
          required_count += 1 if remaining == c
          if counts[remaining] > required_count
            result << [a, b, c, remaining].sort
          end
        end   
        
        puts required_count
        puts remaining
        puts counts
      end
    end
  end

  puts result
end

  four_sum([1, 0, -1, 0, -2, 2], 0)
