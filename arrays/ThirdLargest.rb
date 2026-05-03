def thirdLargest(arr)
    largest  = 0
    secondLargest = 0 
    thirdLargest = 0

    if(arr.length < 3)
    	puts "cannot continue with this " 
        return 
    end



    for i in 0...arr.length do 

        next if arr[i] == largest  || arr[i] == secondLargest || arr[i] == thirdLargest  
             
        if arr[i] > largest 
            thirdLargest = secondLargest 
            secondLargest = largest 
            largest = arr[i]
        elsif arr[i] > secondLargest 
        	thirdLargest = secondLargest
        	secondLargest = arr[i]
        elsif arr[i] > thirdLargest 
        	thirdLargest = arr[i]
        end 
    end

   puts largest
   puts secondLargest
   puts thirdLargest

end 


arr = [3,1,4,5,6,2  ]
thirdLargest(arr)  