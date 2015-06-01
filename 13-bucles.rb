# encoding: UTF-8

# Uso de Bucles
# 
# WHILE, TIMES, EACH

# While
# Funciona igual que en la mayoría de lenguajes

saldo = 1000
def comprar(saldo, costo)
  saldo -= costo.to_i
  puts "Gastar 100: saldo => #{saldo}"
  saldo
end

puts "saldo => #{saldo}"

while saldo > 0
  saldo = comprar(saldo, 100)
end
puts "saldo => #{saldo}"

puts '----------------'
saldo = 900
puts "saldo => #{saldo}"
saldo = comprar(saldo, 100) while saldo > 0  # Forma abreviada en una línea
puts "saldo => #{saldo}"

# Times
# Iterador simple. La sentencia se ejecuta tantas veces como sea el valor entero del objeto
puts '--------------------------'
10.times do |val|
  puts "Imprimir #{val} veces"
end

# Each
# Iterador usado en colecciones de datos, ya sea en listas, arrays o Hashes
puts '---------------------'
array = ['alpha', 'beta', 'ghama']
array.each do |val|
  puts val
end

puts '---------------------'
hash = { first: 'primero', second: 'segundo', last: 'último' }
hash.each do |key, val|
  puts "Indice: #{key}. Valor: #{val}"
end

