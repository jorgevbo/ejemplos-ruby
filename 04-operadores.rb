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
puts 'Operadores de Comparación'
puts '-------------------------'
puts "a = #{a}, b = #{b}"
puts "a <= b : #{a <= b}"
puts "b <=> a: #{b <=> a}"
puts "b <=> b: #{b <=> b}"
puts "b <=> c: #{b <=> c}"

# igualdad
# ==, ===, !=, =~, !~, .eql?, .equal?
# 
puts 'Operadores de igualdad'
puts '----------------------'
puts "1 == 1: #{1 == 1}"
# === se usa en las comprobaciones dentro de un rango. En este caso en un case/switch
puts "(5..10) === 7: #{(5..10) === 7}"
puts "(5..10) === 4: #{(5..10) === 4}"

puts "'abc' =~ /b/ : #{'abc' =~ /b/}"
puts "'abc' =~ /z/ : #{'abc' =~ /z/}"
puts "'123456789' !~ /['a'-'Z']/ : #{'123456789' !~ /['a'-'Z']/}"
puts "'a' !~ /['a'-'Z']/ : #{'a' !~ /['a'-'Z']/}"
