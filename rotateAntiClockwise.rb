def rotateAntiClock(matrix)
        
    mat = matrix.reverse.transpose 
    puts mat
end 


rotateAntiClock([[1,2,3], [4,5,6], [7,8,9]])