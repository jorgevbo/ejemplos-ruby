# encoding: UTF-8
puts 'Strings'
puts '-----------'

# String el tipo de dato para manipular cadenas de caracteres de 1 más dimensiones
# Para declararlas, se usa '' (comillas simples) o "" (comillas dobles)

puts 'Una cadena simple'
puts "Otra cadena"

# Cuando se usan "" en una cadena, permite la declaración de caracteres especiales de sustitucion:
puts "Primera línea\nSegunda línea\nTercera línea"

# Iterpolación de valores mediante la instrucción #{}
a = 10000
puts "el valor de a es: #{a}"
# #{} es un bloque de código, asi que se pueden ejecutar sentencias en el.
puts "Un texto interpolado: #{ a >= 10000 ? 'Mayor o igual 10000' : 'Menor a 10000'}"

# Un tipo de cadena especial se `` que hace llamadas al shell del sistema y devuelve la salida para ser manipulada
ruta = `pwd`
puts ruta

puts `ls -la`

puts ''
puts 'Operaciones con cadenas'
puts '------------------------'

# La concatenación se realiza mediante la operacion +
puts 'uno ' + 'dos '
puts 'uno '.+('dos')

# La operación * permite repetir n veces una cadena
puts "foo = 'foo ' * 10"
foo = 'foo ' * 10
puts foo

# Un string es una array de caracteres, por lo que se puede obtener substring mediante sus indices
hola = 'hola mundo'
puts hola[0] # obtenemos el caracter en posición '0'
puts hola[2,2] # desde la posición '2', obtenemos 2 caracteres

# Tambien es posible realizar reemplazos tratando el string como Hash
hola['hola'] = 'Hi'
puts hola

# Mediante el operador '%' podemos hacer reemplazos de comodines en una cadena
nombre = 'Juan Perez'
puts "Bienvenido, %s" % nombre
