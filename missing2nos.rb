# Given N find the missing 2 numbers in the array


def missing2nos(arr, n)
    

    actualsum = (n * ( n + 1) ) / 2
    sum = 0;
    for i in 0...arr.length
        sum += arr[i]
    end 

    # missing 2 nos be x + y = actualsum - sum 

    difference = actualsum - sum 

    avg  = difference / 2   # consider it as x

    #  1 number will be average 

    secondNum = difference - avg

    puts avg 
    puts secondNum    

end 

missing2nos([1,4,2], 5)