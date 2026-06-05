def max_area(arr)

    current_area = 0
    max_area = 0
    left_ptr = 0
    right_ptr = arr.size - 1

    
    while left_ptr != right_ptr
        


        distance = right_ptr - left_ptr
        
        current_area = [arr[left_ptr], arr[right_ptr]].min * distance

        if max_area < current_area 
            max_area = current_area
        elsif arr[right_ptr] < arr[left_ptr]
            right_ptr -= 1
        elsif arr[left_ptr] < arr[right_ptr]
            left_ptr += 1
        elsif arr[left_ptr] == arr[right_ptr]
            left_ptr += 1
        end

        if left_ptr >= right_ptr
            break 
            # break the loop 
        end 

    end 

    max_area

end 

max_area([3,6,1])