def almostIncreasingSequence(sequence)
	arr = Array.new
	arr = sequence
	sequence.each_index do |ind| 
		arr.delete_at(ind)
		if arr.each_cons(2).all?{|i,j| i <= j} 
			return true
		else
			arr = sequence
		end
	end
	false
end

