#	16. Escribí una función que encuentre la suma de todos los números naturales múltiplos de
#	3 ó 5 menores que un número tope que reciba como parámetro.

def sum(max)
	((1..max).select { |x| x % 3 == 0 || x % 5 == 0 }).sum
end

p sum(1000)