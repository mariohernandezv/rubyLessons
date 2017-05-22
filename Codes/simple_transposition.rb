def simple_transposition(original="Sample text")
=begin
	arr1=[]
	arr2=[]
	[*0...original.length].each do |indice|
		if (indice%2) == 0
			arr1 << original[indice]
		else
			arr2 << original[indice]
		end
	end
	arr1.join << arr2.join
=end
arr1=[]
arr2=[]
[*0...original.length].each { |indice| (indice%2) == 0 ? arr1 << original[indice] : arr2 << original[indice] }
arr1.join << arr2.join

end

