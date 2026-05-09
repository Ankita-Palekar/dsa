def CycleSort(arr)
    i = 0;
    n = arr.length 
    while i < n
        correctIndex = arr[i] - 1

        if arr[arr[i]-1] == arr[i]  && arr[i] != -1 && arr[arr[i] - 1] != -1
            puts arr[i]
            arr[arr[i] - 1] = -1
            
        end

        if arr[i] != arr[correctIndex] 
            # Perform the swap
            arr[i], arr[correctIndex] = arr[correctIndex], arr[i]
        else
            # Only move to the next index if the current one is in the right place
            i += 1
        end
    
    end

    # puts arr

end

CycleSort([3,2,2,1,4,5,5])