#	Investigá y probá en un intérprete de Ruby cómo crear objetos de los siguientes tipos
#	básicos usando literales y usando el constructor new (cuando sea posible):
#	1. 	Arreglo (Array)
#	2. 	Diccionario o hash (Hash)
#	3. 	String (String)
#	4. 	Símbolo (Symbol)

#	1.	Arreglo

arreglo = [1, "two", 3.0] 	#=> [1, "two", 3.0]
arreglo = Array.new    		#=> []


#	2.	Diccionario o hash (Hash)

dic = { "index_1" => 1, "index_2" => 2 }
dic = { index_1: 1, index_2: 2 }
dic = Hash.new


#	3. 	String (String)

str = "Hello world"


#	4. 	Símbolo (Symbol)

symbol = :sym
