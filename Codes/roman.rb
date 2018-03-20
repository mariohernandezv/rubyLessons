def solution(roman="XVI")
#Conversión de Romano a entero decimal
	ind = 0
	salida = 0
	while roman.length >= ind 
		case roman[ind] 
		when "M" 
			salida += 1000
			salida += solution(roman[1,roman.length])
		when "D" 
			salida += 500
			salida += solution(roman[1,roman.length])
		when "C" 
			case roman[ind+1] 
			when "D"
				salida += 400
				salida += solution(roman[2,roman.length])	
			when "M"
				salida += 900
				salida += solution(roman[2,roman.length])
			else
				salida += 100
				salida += solution(roman[1,roman.length])
			end
		when "L" 
			salida += 50
			salida += solution(roman[1,roman.length])
		when "X" 
			case roman[ind+1] 
			when "L"
				salida += 40
				salida += solution(roman[2,roman.length])	
			when "C"
				salida += 90
				salida += solution(roman[2,roman.length])
			else
				salida += 10
				salida += solution(roman[1,roman.length])
			end
		when "V" 
			salida += 5
			salida += solution(roman[1,roman.length])
		when "I" 
			case roman[ind+1] 
			when "V"
				salida += 4
				salida += solution(roman[2,roman.length])	
			when "X"
				salida += 9
				salida += solution(roman[2,roman.length])
			else
				salida += 1	
				salida += solution(roman[1,roman.length])
			end
		end
		return salida
	end
end

=begin
Symbol    Value
I          1
V          5
X          10
L          50
C          100
D          500
M          1,000
=end