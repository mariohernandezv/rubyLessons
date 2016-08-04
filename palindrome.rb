def palindrome_chain_length(n)
=begin
	steps=0
	while n != n.to_s.reverse.to_i
		n = ( n.to_s.reverse.to_i + n )
		steps += 1
	end
	steps
=end

  n.to_s == n.to_s.reverse ? 0 : 1 + palindrome_chain_length(n + n.to_s.reverse.to_i)

end