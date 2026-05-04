# sol 1


def Maf3Product(arr)
    arr = arr.sort 
    length = arr.length 
    puts arr[length -1] * arr[length - 2] * arr[length - 3]
end 

# Maf3Product([3,4,5,1,8,1,6,9])


# sol 2

# use the largest fo 3 and use that to take the products 

def thirdLargestProducts(arr)
    largest  = -100
    secondLargest   = -100
    thirdLargest  = -100

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

   puts largest * secondLargest * thirdLargest

end



thirdLargestProducts( [1, -4, 3, -6, 7, 0])
