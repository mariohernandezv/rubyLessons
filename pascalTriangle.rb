def pascalsTriangle(n=8, c=1, arreglo_previo=[], salida=[])
	arreglo_final= []
	if c == 1 
		salida += (arreglo_final = [1])
		n > 1 ? pascalsTriangle(n, (c + 1), arreglo_final, salida) : salida
	elsif c == 2
	 	salida += (arreglo_final = [1,1])
	 	pascalsTriangle(n, (c + 1), arreglo_final, salida)
	elsif c == (n + 1)
		salida
	else
		arreglo_final[0] = 1
		arreglo_final[c - 1] = 1
		[*1...(c - 1)].each do |num|
			arreglo_final[num] = ( arreglo_previo[ (num - 1) ] + arreglo_previo[ (num) ] )
		end
		salida += arreglo_final
		pascalsTriangle(n, (c + 1), arreglo_final, salida)
	end
end