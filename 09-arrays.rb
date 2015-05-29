# encoding: UTF-8
# 
# Arrays
# 
# Array es un tipo de estructura ordenada por indices enteros, pueden almacenar cualquier tipo de dato
# A diferencia de otros lenguajes, no es necesario definir una dimensión fija
#
# Para definir un Array:
# - Se puede instanciar una clase nueva Clase Array (Array.new)
# - Se pueden crear rapidamente usando [] ( arr = [] )

puts 'Arrays'
puts '---------------'
array_1 = Array.new
array_1[0] = "uno"
array_1[1] = "dos"
puts array_1.to_s

array_2 = ['uno', 'dos']
puts array_2.to_s

array_3 = []
puts array_3.to_s

# Si lo que se va definir es un array de palabras, se puede usar la expresión %w() o %W()
# que son mejores en rendimiento
puts ''
puts 'Usando %w'
puts '-----------'
palabras = %w(lorem ipsum dolorem sit amet)
puts palabras.to_s

# Se pueden utilizar algunas operaciones básicas sobre los arrays

puts ''
puts 'Operaciones'
puts '-------------'
# - Adición
puts (palabras + ['foo', 'bar']).to_s
# * multiplicación
puts (palabras * 2).to_s

puts ''
puts 'Lectura de datos y subarrays'
puts '------------------------------'
# Para acceder a un elemento en especifico, se debe enviar el indice correspondiente
dias = %w(lunes martes miercoles jueves viernes sabado domingo)
puts dias[2]

# Se pueden usar indices negativos para ordenar los datos a partir del ultimo elemento de la lista
puts dias[-1]

# Es posible obtener subarrays, indicando el indice del elemento y la cantidad de datos a mostrar
puts dias[3,2].to_s