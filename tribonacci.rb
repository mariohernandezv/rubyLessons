def tribonacci(signature=[1,1,1],n=10)
	while n > 2
		for i in 3..n 
			signature << signature.inject( :+ )
			puts signature, n 
			#tribonacci([ signature[i-2], signature[i-1], signature[i]], n-1)

		end
	end
	puts signature
	signature
end