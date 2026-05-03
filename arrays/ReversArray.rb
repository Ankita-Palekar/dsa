def ReverseArray(arr)
    len = arr.length 
   for i in 0...arr.length/2 do
    	temp = arr[len-i]
    	arr[len-i] = arr[i]
    	arr[i] = temp 
   end 

    puts arr
end


arr = [1,2,3,4,5,6]
ReverseArray(arr)