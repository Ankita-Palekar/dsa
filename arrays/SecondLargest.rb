
def secondLargest 
    arr = [1,2,3,1,4,6,6]
    largest = 0
    secondLargest = 0

 arr.each do |val|
    next if val == largest || val == secondLargest  

 	if val > largest 
 		secondLargest = largest 
 		largest = val
    elsif val > secondLargest 
        secondLargest = val
    end 
 end 

 puts secondLargest
end 

secondLargest()