def get_hashtags(post)
	salida = []
	words = post.split
	words.each do |x| 
		if x.scan(/\A\#+[a-zA-Z]/) != []
			if x != "#"
				salida << x.delete("#")
			end
		end
	end
	salida
end