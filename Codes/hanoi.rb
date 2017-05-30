def hanoi(num=9, source=[*1..num], target=[], auxiliar=[])

	if num > 0 
		hanoi(num-1, source, auxiliar, target)
		target.unshift(source.shift)
		puts (source.to_s + " " + auxiliar.to_s + " " + target.to_s)
		hanoi(num-1, auxiliar, target, source)
	end
end

