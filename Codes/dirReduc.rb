def dirReduc(arr)
	last_dir=""
	right_dir=[]
	arr.each do |dir|
		case dir 
			when "NORTH"
				if ! (last_dir=="SOUTH")
					right_dir.push(dir)
				end
	  		when "SOUTH"
	  			if ! (last_dir=="NORTH")
					right_dir.push(dir)
				end
	  		when "EAST"
	  			if ! (last_dir=="WEST")
					right_dir.push(dir)
				end
	  		when "WEST"
	  			if ! (last_dir=="EAST")
					right_dir.push(dir)
				end
		end
		last_dir=dir
		
	end
	right_dir
end