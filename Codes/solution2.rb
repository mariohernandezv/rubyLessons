def solution(digits=[*2..9])
 #Encuentra el n´mero de 5 dígitos mayor buscando en los números de 5 dígitos existentes. 
  sol=0
  	digits[0,5].to_i > sol ? sol = digits[0,5].to_i : digits = digits.reverse.chop.reverse while digits.length > 5
  sol
end