# Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
def adjacentElementsProduct(inputArray)
	mayor = -1001
	inputArray.each.with_index do |num,i|
		if i > 0 
			if (num * inputArray[i-1]) > mayor 
				mayor = (num * inputArray[i-1])
			end
		end
	end
	mayor
end