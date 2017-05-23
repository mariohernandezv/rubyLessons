def digitRootSort(num)
	aroot = Array.new
	sroot = Array.new
	num.sort!
    num.each.with_index { |rnum,i| aroot[i] = root(rnum),i }
    aroot.sort.each.with_index { |rnum,i| sroot[i] = num[rnum[1]] }
    sroot
end

def root(num)
	salida=0
    num.to_s.chars.each	{ |n| salida += n.to_i }
    salida > 9 ? root(salida) : salida
end
