# encoding: UTF-8
# 
# Algunos tipos de datos especiales en Ruby son: Rangos y Simbolos

# Los rangos permiten declarar una lista de valores. Muy usados en Iterables y Enumerables
puts 'Rangos'
puts '---------'

# .. Representa un rango con valores inclusivos
a = (1..10)
puts 'a = (1..10)'
puts 'a.each { |item| puts item }'
a.each { |item| puts item }
puts '--------'
# ... No incluye el último elemento
b = (1...10)
puts 'b = (1...10)'
puts 'b.each { |item| puts item }'
b.each { |item| puts item }

puts '-----------------------'
# También se pueden incluir caracteres
puts '(\'a\'..\'z\').each { |item| puts item }'
('a'..'z').each { |item| puts item }

puts '-----------------------'
# ó fechas
require 'date'
hoy = Date.today
(hoy..(hoy.next_month)).each {|dia| puts dia }

# Los simbolos principalmente se usan para definir llaves y parametros que no cambiaran en el tiempo
# Se recomienda su uso como llaves para los Hash en vez de strings, debido a que utilizan el mismo
# recurso de memoria y no instancian un nuevo objeto como con los strings
puts ''
puts 'Simbolos'
puts '---------'

puts ":admin es de clase #{:admin.class}"
puts "'admin' es de clase #{'admin'.class}"
puts ":admin tiene object_id: #{:admin.object_id}"
puts ":admin tiene object_id: #{:admin.object_id}"
puts "'admin' tiene object_id: #{'admin'.object_id}"
puts "'admin' tiene object_id: #{'admin'.object_id}"

puts 'hash = {uno: 1, dos: 2, :tres => 3}'
hash = {uno: 1, dos: 2, :tres => 3}
puts "hash[:uno] => #{hash[:uno]}"
puts "hash[:dos] => #{hash[:dos]}"
puts "hash[:tres] => #{hash[:tres]}"