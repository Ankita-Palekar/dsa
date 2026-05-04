def RotateArray(arr, d)
    tempArray = []
    for i in d...arr.length 
        tempArray.push(arr[i])
    end 

    for i in 0...d
        tempArray.push(arr[i])
    end 

    puts tempArray
end 


RotateArray([1,2,3,4,5,6], 5)