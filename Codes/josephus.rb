def josephus(items,k)
  salida = []
  i=k
  while i < items.count do
  	salida << items.delete_at(i)
  	i += k
  end

  if k < items.count
  	salida += josephus(items,k)
  elsif k == items.count
  	items += salida
  end
end