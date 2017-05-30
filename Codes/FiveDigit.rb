def solution(digits=[*2..9])
  sol=0
  while digits.length > 5 do 
  	num=digits[4]+(digits[3]*10)+(digits[2]*100)+(digits[1]*1000)+(digits[0]*10000)
  	(sol = num) if num > sol 
  	digits.shift
  end
  sol
end