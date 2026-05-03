
def secondLargest 
    arr = [3,1,4,6,6,2]
    largest = 0
    secondLargest = 0

 arr.each do |val|
 	if val > largest 
 		secondLargest = largest 
 		largest = val
    elsif val > secondLargest && val != largest
        secondLargest = val
    end 
 end 

 puts secondLargest
end 

secondLargest()