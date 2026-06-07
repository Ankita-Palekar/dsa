def product_except_self_without_div(arr)

  answer = Array.new(arr.length)

#   maintaining left and right pointers for the prefix and suffix product

  left = 1
  for i in 0...arr.length
    answer[i] = left
    left *= arr[i]
  end



  right = 1
  j = arr.length - 1
  
    
  while j >= 0  
    answer[j] *= right
    right *= arr[j]
    
    j -= 1 

  end

  
  return answer
end 

puts(product_except_self_without_div([1,2,3,4]))