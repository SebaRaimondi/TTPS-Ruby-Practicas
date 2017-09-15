def prueba(*args, block)
	block.yield args
	rescue RuntimeError => a
		puts "Algo salio mal"
		return :rt
	rescue NoMethodError => b
		puts "No encontre un metodo: " << b.message
		return :nm
	rescue => e
		puts "No se que hacer!"
		raise e

end

p prueba("a", "b", "c", ->(x) { x.to_s.upcase })