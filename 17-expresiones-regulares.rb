# encoding: UTF-8
#
# Expresiones Regulares
#
# Se utilizan para encontrar ocurrencias (matching) en cadenas de texto
# 
puts 'Expresiones Regulares'
puts '-------------------------'

puts 'Instanciar un objeto Regexp'
puts ''
puts '1. Mediante el constructor: ' + "regexp1 = Regexp.new('[a-z]')"
regexp1 = Regexp.new('[a-z]')

puts '2. De forma directa: ' + "regexp2 = /[a-z]/"
regexp2 = /[a-z]/

puts '3. A traves del bloque %r{}: ' + "regexp3 = %r{[a-z]}"
regexp3 = %r{[a-z]}

puts ''
puts '--------------------------'
puts 'Probando comparación'

puts "cadena1 = '123abc'"
cadena1 = '123abc'
puts "cadena2 = '123456'"
cadena2 = '123456'

puts "regexp1 =~ cadena1:"
puts regexp1 =~ cadena1
puts "regexp2 =~ cadena1:"
puts regexp2 =~ cadena1
puts "regexp3 =~ cadena1:"
puts regexp3 =~ cadena1

puts "regexp1 =~ cadena2:"
puts (regexp1 =~ cadena2).class
puts "regexp2 =~ cadena2:"
puts (regexp2 =~ cadena2).class
puts "regexp3 =~ cadena2:"
puts (regexp3 =~ cadena2).class