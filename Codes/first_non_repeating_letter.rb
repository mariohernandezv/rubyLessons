def  first_non_repeating_letter(s="prueba texto a") 
  s.each_char.with_index do |letra,i|
  	[*(i+1)...(s.length)].each do |indice2|
  		if letra.upcase != s[indice2].upcase
  			
  		end
  	end
  end
  return 0
end