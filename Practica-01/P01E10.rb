#	10. Escribí una función llamada a_ul que reciba un Hash y retorne un String con los pares de
#	clave/valor del hash formateados en una lista HTML <ul>. Por ejemplo:

#	a_ul({ perros: 1, gatos: 1, peces: 0})
#	# => "<ul><li>perros: 1</li><li>gatos: 1</li><li>peces: 0</li></ul>"

def a_ul(hash)
	hash.reduce("<ul>") do |str, (sym, val)|
		str << "<li>#{sym.to_s}: #{val}</li>"
	end << "</ul>"
end

a_ul({perros: 1, gatos: 1, peces: 0})