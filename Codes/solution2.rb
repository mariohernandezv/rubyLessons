def solution(digits=[*2..9])
  sol=0
  	digits[0,5].to_i > sol ? sol = digits[0,5].to_i : digits = digits.reverse.chop.reverse while digits.length > 5
  sol
end