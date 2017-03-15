def solution(number)
 # put your solution here
 salida = 0
 (1...number).each { |i| (salida += i) if ((i%3 == 0)||(i%5 == 0)) }
 salida
end