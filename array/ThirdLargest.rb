def ThirdLargest(arr)
    largest = 0 
    secondLarge = 0 
    thirdLarge = 0

    for i in 0...arr.length 

        if arr[i] > largest 
            thirdLarge = secondLarge
            secondLarge = largest
            largest = arr[i]
        elsif arr[i] > secondLarge && largest != arr[i]
            thirdLarge = secondLarge
            secondLarge = arr[i]
        elsif arr[i] > thirdLarge && secondLarge != arr[i] && largest != arr[i]
            thirdLarge = arr[i]
        end 
    end 


    puts   "First largest = " + largest.to_s + "   second largest = "  + secondLarge.to_s +   " third large = " +  thirdLarge.to_s 

end 

ThirdLargest([3,1,24,6,1,3,8,6,1,3,5,8])