# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}


def two_sum(nums, target)
   
    hashMap = {}
    

    nums.each_with_index do |val, index|
        remaining = target - val
        if(hashMap.key?(remaining))
            return [hashMap[remaining], index]
        end

        hashMap[val] = index
    end 

end
