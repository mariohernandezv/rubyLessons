def prefill(n, v = nil)
	  Array.new(Integer(n)) { v }
	rescue
	  raise TypeError.new "#{n} is invalid"
end