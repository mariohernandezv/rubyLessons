module RomanNumerals
	def RomanNumerals.to_roman(roman="XVI")
	#Conversión de Romano a entero decimal

		ind = 0
		salida = 0
		while roman.length >= ind 
			case roman[ind] 
			when "M" 
				salida += 1000
				salida += RomanNumerals.to_roman(roman[1,roman.length])
			when "D" 
				salida += 500
				salida += RomanNumerals.to_roman(roman[1,roman.length])
			when "C" 
				case roman[ind+1] 
				when "D"
					salida += 400
					salida += RomanNumerals.to_roman(roman[2,roman.length])	
				when "M"
					salida += 900
					salida += RomanNumerals.to_roman(roman[2,roman.length])
				else
					salida += 100
					salida += RomanNumerals.to_roman(roman[1,roman.length])
				end
			when "L" 
				salida += 50
				salida += RomanNumerals.to_roman(roman[1,roman.length])
			when "X" 
				case roman[ind+1] 
				when "L"
					salida += 40
					salida += RomanNumerals.to_roman(roman[2,roman.length])	
				when "C"
					salida += 90
					salida += RomanNumerals.to_roman(roman[2,roman.length])
				else
					salida += 10
					salida += RomanNumerals.to_roman(roman[1,roman.length])
				end
			when "V" 
				salida += 5
				salida += RomanNumerals.to_roman(roman[1,roman.length])
			when "I" 
				case roman[ind+1] 
				when "V"
					salida += 4
					salida += RomanNumerals.to_roman(roman[2,roman.length])	
				when "X"
					salida += 9
					salida += RomanNumerals.to_roman(roman[2,roman.length])
				else
					salida += 1	
					salida += RomanNumerals.to_roman(roman[1,roman.length])
				end
			end
			return salida
		end
	end

	def RomanNumerals.from_roman(num=16)
	#Conversión de entero decimal a romano
		romano = ""
		while (num / 1000) >= 1 # millares
			romano << "M"
			num -= 1000
		end

		case (num/100) # centenas
			when 9
				romano << "CM"
				num -= 900
			when 5, 6, 7, 8
				romano << "D"
				while num/100 >= 6
					romano << "C"
					num -=100
				end
				num -= 500
			when 4 
				romano << "CD"
				num -= 400
			else
				while num/100 >= 1
					romano << "C"
					num -=100
				end
			end
			case (num/10) # decenas
			when 9
				romano << "XC"
				num -= 90
			when 5, 6, 7, 8
				romano << "L"
				while num/10 >= 6
					romano << "X"
					num -= 10
				end
				num -= 50
			when 4 
				romano << "XL"
				num -= 40
			else
				while num/10 >= 1
					romano << "X"
					num -=10
				end
			end
			puts num
			case (num%10) # unidades
			when 9
				romano << "IX"
				num -= 9
			when 5, 6, 7, 8
				romano << "V"
				while num >= 6
					romano << "I"
					num -=1
				end
				num -= 5
			when 4 
				romano << "IV"
				num -= 4
			else
				while num >= 1
					romano << "I"
					num -=1
				end
			end
 
		return romano
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