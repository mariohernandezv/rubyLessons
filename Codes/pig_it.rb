def pig_it text
	salida = ""
	text.split.each { |word| (word =~ /[[:alpha:]]/ ? salida << word[1..-1] + word[0] + "ay" + " " : salida << word) }
	salida.chomp(" ")
end

#=
#= def pig_it text
#=  text.gsub(/(\w)(\w+)*/, '\2\1ay')
#= end