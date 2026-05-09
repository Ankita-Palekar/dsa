def array_rev(matrix)

  rows = matrix.length 

  cols = matrix[0].length 
  
  for i in 0...rows

    for j in 0...cols / 2

        k = j

        n = cols - 1 - j

        temp = matrix[i][k]

        matrix[i][k] = matrix[i][n]

        matrix[i][n] = temp

      

    end

  end

  

  

  puts matrix

end 



arr = [[1,2,3],[4,5,6], [7,8,9]]

array_rev(arr)

