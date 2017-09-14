# 7. Modificá el código anterior para, acorde a tu análisis, corregir los problemas que pueda tener.
# Nota: asumí que el juego debe terminar al momento que el primer jugador supera la posición 40 en el tablero.

# Tira un dado virtual de 6 caras
def tirar_dado
	rand 1..6
end

# Mueve la ficha de un jugador tantos casilleros como indique el dado en un tablero virtual de 40 posiciones.
# Si no se recibe la cantidad de casilleros, aprovecho el valor por defecto para ese parámetro para evitar tener que
# llamar a #tirar_dado dentro del cuerpo del método.
def mover_ficha (fichas, jugador, casilleros = tirar_dado)
	fichas[jugador.to_sym] += casilleros
	if fichas[jugador.to_sym] > 40
		puts "Ganó #{jugador}!!"
		true
	else
		puts "#{jugador} ahora está en el casillero #{fichas[jugador.to_sym]}"
		fichas[jugador.to_sym]
		false
	end
end

posiciones = { azul: 0, rojo: 0, verde: 0 }
finalizado = false
until finalizado
	['azul', 'rojo', 'verde'].shuffle.each do | jugador|
		finalizado = mover_ficha(posiciones, jugador)
		if finalizado
			break 2
		end
	end
end
