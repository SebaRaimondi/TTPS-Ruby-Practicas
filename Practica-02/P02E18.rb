def prueba(*args)
	begin
		yield args
	rescue RuntimeError => a
		puts "Algo salio mal"
		return :rt
	rescue NoMethodError => b
		puts "No encontre un metodo: " << b.message
		return :nm
	rescue => e
		puts "No se que hacer!"
		raise e
	else
		return :ok
end

p prueba("a", "b", "c") { x.to_s.upcase }
