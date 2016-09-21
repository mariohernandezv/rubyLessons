def choose_best_sum(t = 20, k = 3, ls = [1,2,3,4,5,6,7,8,9])
	menor = 0
    if ls.empty?
    	nil
    else
    	ls.each.with_index do |m,i|
    		if ((m + menor) < t ) && ( k > 0 )
    			menor += m
    			k -= 1
    		end
    	end
    	menor
    end

end