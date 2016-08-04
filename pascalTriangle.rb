def pascalsTriangle(arreglo_previo=[], c=1, n=5)
	arreglo_final= []
	arreglo_auxiliar = []
	if c == 1 
		arr1 = [1]
	elsif c == 2
		arr1 = [1,1]
	elsif c == n
		arreglo_previo
	else
		arreglo_final[0] = 1
		arreglo_final[c] = 1
		[*1...c].each do |num|
			arreglo_final[num] = arreglo_previo[num] + arreglo_previo[num+1]
			pascalsTriangle(arreglo_final, c+1, n)
		end
	end
end