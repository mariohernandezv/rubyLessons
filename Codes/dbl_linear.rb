def dbl_linear(num=rand(10))
	#y = 2 * x + 1
	#z = 3 * x + 1
	require 'set'
	arr = []
	[*0..num].each do |n| 
		arr << (2 * n + 1) 
		arr << (3 * n + 1)
	end
	salida = arr.to_set.sort
	puts salida[num].to_s 
	puts salida
end