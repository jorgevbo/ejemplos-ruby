# encoding: UTF-8

# Operadores básicos

# Unarios
# +, -, !, ~
# +: Definición de valor positivo (por defecto)
# -: Definición de valor negativo
# !: Operador lógico NOT
# ~: Bitwise: complemento
puts 'Operadores unarios'
puts '------------------'
puts "+1 => #{+1}"
puts "-1 => #{-1}"
puts "!1 => #{!1}"
puts "~1100 => #{~1100}"

# Aritméticos
# +, -, *, /, %
puts ''
puts 'Operadores Aritméticos'
puts '----------------------'
puts "1 + 1 = #{1+1}"

# En ruby, los tipos básicos son objetos, asi que cada operador corresponde a un metodo
puts "1.+(8) = #{1.+(8)}"
puts "10 / 4.0 = #{10 / 4.0}"
puts "10./(4.0) = #{10./(4.0)}"

# Comparación
# >, >=, <, <=, <=>
a = 0
b = 1
c = 2
puts ''
puts 'Operadores de Comparación'
puts '-------------------------'
puts "a = #{a}, b = #{b}, c = #{c}"
puts "a <= b : #{a <= b}"
puts "b <=> a: #{b <=> a}"
puts "b <=> b: #{b <=> b}"
puts "b <=> c: #{b <=> c}"

# igualdad
# ==, ===, !=, =~, !~, .eql?, .equal?
# 
puts ''
puts 'Operadores de igualdad'
puts '----------------------'
puts "1 == 1: #{1 == 1}"
# === se usa en las comprobaciones dentro de un rango. En este caso en un case/switch
puts "(5..10) === 7: #{(5..10) === 7}"
puts "(5..10) === 4: #{(5..10) === 4}"

# =~ Se usa para obtener comprobar expresiones regulares y obtener la posición en que
# se encuentra el patrón enviado. Retorna una Fixnum o nil en caso de no encontrarse
puts "'abc' =~ /b/ : #{'abc' =~ /b/}"
puts "'abc' =~ /z/ : #{('abc' =~ /z/).class}"
puts "'123456789' !~ /['a'-'Z']/ : #{'123456789' !~ /['a'-'Z']/}"
puts "'a' !~ /['a'-'Z']/ : #{'a' !~ /['a'-'Z']/}"

puts ''
puts 'comprobaciones de igualdad'
puts '--------------------------'
puts "1 == 1.0 : #{1 == 1.0}"

# eql? se usa para verificar que el valor y tipo de datos sean los mismos
puts "1.eql?(1.0) : #{1.eql?(1.0)}"
puts "'a'.eql?('a') : #{'a'.eql?('a')}"

# equal? verifique que la referencia en memoria del objeto, sea la misma
puts "'a'.equal?('a') : #{'a'.equal?('a')}"
valor = 'hola'
puts "valor = 'hola'"
puts "valor.equal?(valor) : #{valor.equal?(valor)}"

# Booleanos
# &&, and, ||, or, !, not
puts ''
puts 'Operadores Booleanos'
puts '-------------------------'
puts "true && true: #{true && true}"
puts "true and true: #{true and true}"
puts "!true: #{!true}"
puts "not true: #{not true}"