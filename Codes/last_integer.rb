	def last_digit(n1, n2)
  		(n2 == 0)? 1: ((n1.to_s[-1].to_i)**((n2%4) + 4)).to_s[-1].to_i
	end
=begin	
	return 1 if n2 == 0
		
	case n1.to_s.chars.map(&:to_i).last
		when 0
			0
		when 1
			1
		when 2
			case n2%4
				when 0
					6 #2
				when 1
					2 #4
				when 2
					4 #8
				when 3
					8 #6
			end
		when 3
			case n2%4
				when 0
					1 #3
				when 1
					3 #9
				when 2
					9 #7
				when 3
					7 #1
			end
		when 4
			case n2%2
				when 0
					6
				when 1
					4
			end
		when 5
			5
		when 6
			6
		when 7
			case n2%4
				when 0
					1 #7
				when 1
					7 #9
				when 2
					9 #3
				when 3
					3 #1
			end
		when 8
			case n2%4
				when 0
					6 #8
				when 1
					8 #4
				when 2
					4 #2
				when 3
					2 #6
			end
		when 9
			case n2%2
				when 0
					1
				when 1
					9
			end
	end
end

=end
