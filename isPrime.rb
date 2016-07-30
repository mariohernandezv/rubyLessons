def isPrime(num)
  num < 2 ? false : (2..Math.sqrt(num)).none?{|i| num%i == 0}
end

=begin
def isPrime(num)
  # Your code here
  (2...num).each do |i| 
  	if (num % i) == 0
  		return false
  	end
  end
  return true
end
=end