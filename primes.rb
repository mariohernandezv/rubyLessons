class Primes
	attr_accessor :primos
	@primos = [2]

	def initialize
		
	end

	def self.first(n=3)
		if @primos.length.to_i > n 
			return @primos[0..n-1]
		else
			num = @primos.last.to_i + 1
			while @primos.length.to_i < n 
					@primos << num if primo(num)
					num += 1
			end
		@primos[0..n-1]
		end
	end


	def self.primo(num)
		[*2...num].each { |i| return false if (num % i) == 0 }
		true
	end
end