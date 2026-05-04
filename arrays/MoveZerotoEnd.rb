def moveZeroToEnd(arr)
    

    # temparray solution 
    temp = []
    counter = 0 
    for i in 0...arr.length 
        if arr[i] != 0
            temp.push(arr[i])
            counter += 1
        end 
    end 

    for i in counter ... arr.length
        temp.push(0) 
    end 


    puts temp
end 




# sol2 with o(n) space and time complexity
def moveZeroToEndSpaceSolution(arr)
    last_non_zero_index = 0

    arr.each_with_index do |element, current|
        if element != 0 
            arr[last_non_zero_index], arr[current] = arr[current], arr[last_non_zero_index]
            last_non_zero_index += 1
        end 
    end 

    puts arr

end 

moveZeroToEndSpaceSolution([0,1,2,0,0,9,8])