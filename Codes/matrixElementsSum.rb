#def matrixElementsSum(matrix)
#    res = 0
#    matrix.each.with_index do |x,xi|
#        x.each.with_index do |y,yi|
#            puts "#{x}, #{y}, at #{xi}, #{yi}, matriz #{matrix[xi][yi]}"
#            if y == 0                
#                if (matrix[xi].length)-1 > xi+1
#                    puts "0, piso inferior #{xi+1}"
#                    matrix[xi+1][yi] = 0
#                end
#            else
#                res += y
#            end
#        end
#    end
#    res
#end

#def matrixElementsSum(matrix)
#    ??????.each_with_index do |v, ?|
#      v.each_with_index { |vv, ??| matrix[i+1][??] = 0 if vv == ? && matrix[i+1] }
#    ???.flatten.inject(0, :+)
#???



def matrixElementsSum(matrix)
    matrix.each_with_index do |v, i|
      v.each_with_index { |vv, ii| matrix[i+1][ii] = 0 if vv == 0 && matrix[i+1] }
    end.flatten.inject(0, :+)
end



