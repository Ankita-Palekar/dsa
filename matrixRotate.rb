m
def transposeofmat(matrix)
    rows = matrix.length
  cols = matrix[0].length
  
  # Initialize a new matrix with swapped dimensions
  result = Array.new(cols) { Array.new(rows) }
  
  rows.times do |i|
    cols.times do |j|
      result[j][i] = matrix[i][j]
    end
  end
  

#   for rotation of the array we are reversing here. if the transpose of the matxis needs to
#  be taken it can be taken before this step
 puts result.reverse()

end 


transposeofmat([[1,2], [3,4]])