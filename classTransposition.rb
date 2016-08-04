class Transposition 

	def initialize(code)
		@code = code
	end

	def simple_transposition_code(original=@code)
		arr1=[]
		arr2=[]
		[*0...original.length].each { |indice| (indice%2) == 0 ? arr1 << original[indice] : arr2 << original[indice] }
		@code = arr1.join << arr2.join
	end

	def simple_transposition_uncode(original=@code)
		arr1=[]
		arr2=[]
		salida=[]
		if original.length % 2 == 0
			arr1 = original[0...( original.length / 2 ) ]
			arr2 = original[(( original.length / 2 ))..( original.length )]
		else
			arr1 = original[0..( original.length / 2 ) ]
			arr2 = original[(( original.length / 2 ) + 1)..( original.length )]
		end
		[*0...original.length].each do |indice|  
			salida << arr1[indice]
			salida << arr2[indice]
		end
		@code = salida.join
	end
end