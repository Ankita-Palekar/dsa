def moveZeros(arr)

    index_zero = 0;

    for i in 0...arr.length
        if arr[i] != 0
           arr[index_zero], arr[i] = arr[i], arr[index_zero]
            index_zero += 1
        end 
    end 

    puts arr
end 


moveZeros([1,2,3])