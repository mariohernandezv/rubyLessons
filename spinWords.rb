def spinWords(string)
  #TODO
=begin 
  arr = string.split(" ")
  arr.each { |text| text.reverse! if text.length > 4 }.join(" ")
=end

	string.split(" ").each { |text| text.reverse! if text.length > 4 }.join(" ")
end