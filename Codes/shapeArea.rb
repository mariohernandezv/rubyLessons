def shapeArea(n)
	i = 1
	f = 1
	c = 0
	while n >= i	
		f += c
		c += 4
		i += 1
	end
	f
end

