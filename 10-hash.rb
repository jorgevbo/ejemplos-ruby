# encoding: UTF-8

# Hash
#
# Un Hash es una array asociativo o diccionario de datos
# A diferencias de un array, los indices pueden ser de tipo Fixnum, String o Symbol
# Se aconseja el uso de simbolos como indices, por su mejor desempeño

puts 'Hash'
puts '---------'

# Para inicializar un Hash, se puede recurrir al constructor de la clase, o usar la forma
# simplificada {}

hash_1 = Hash.new
hash_1[:lun] = 'lunes'
hash_1[:mar] = 'martes'
puts hash_1.to_s

# Esta forma de declaración todavia se usa por compatibilidad con versiones anteriores a Ruby 2.0
hash_2 = {:lun => 'lunes', :mar => 'martes'}
puts hash_2.to_s

hash_3 = {lun: 'lunes', mar: 'martes'}
puts hash_3.to_s

# Para acceder a un valor del Hash, se debe enviar la llave asociada

puts ''
puts 'Acceso a valores del hash'
puts '--------------------------'
puts hash_3[:mar]
hash_multiple = {10 => 'diez', 'cuatro' => 'cuatro', tres: 'tres'}
puts hash_multiple[10]
puts hash_multiple['cuatro']
puts hash_multiple[:tres]