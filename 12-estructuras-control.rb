# encoding: UTF-8

# Estructuras de Control IF, ELSE, CASE
#
# IF
# Se comporta igual que en otros lenguajes

require 'date'
hoy = Date.today

if hoy.sunday?
  puts 'es Domingo!'
else
  puts 'Aún no es fin de semana'
end

# Para encadenar distintas comprobaciones en un if, se usa la sentencias elseif
if hoy.sunday?
  puts 'es Domingo!'
elseif hoy.saturday?
  puts 'es Sábado!'
else
  puts 'Hoy hay trabajo :('
end

# Para dar comprensión al código, se puede usar la sentencia unless, que es un if ! (negado)
array = []
unless array.empty?       # Es igual a declarar if !array.empty?
  array.each do |item|
    puts "Item: #{item}"
  end
end

# En caso de que los bloques de código sean de 1 línea, se aconseja el uso de la forma abreviada
dia = 'domingo' if hoy.sunday?

#
# CASE 
# La sentencia Case es similar al switch de otros lenguajes
dia = 'lunes'
case dia
when 'sabado', 'domingo'
  puts 'es fin de semana!'
when 'viernes'
  puts 'es viernes'
else
  puts 'es otro día más...'
end

# También tiene una forma abreviada en la que se puede retornar un valor,
# tomar en cuenta la identación.
# La expresión a verificar, tambien puede ser una expresión booleana
numero = 100
es_par = case
         when numero % 2 == 0 then true
         when numero % 2 != 0 then false
         end
puts es_par