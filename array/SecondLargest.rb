def SecondLargest(arr)
    largest = 0 ;
    secondLargest = 0 ;
    for i in 0...arr.length 
        if arr[i] >  largest 
            secondLargest = largest 
            largest = arr[i]
        elsif arr[i] > secondLargest && arr[i] != largest 
            secondLargest = arr[i]
        end
    end 
    puts secondLargest

end 


SecondLargest([3,1,2,5,7,1,6,1,2,3])