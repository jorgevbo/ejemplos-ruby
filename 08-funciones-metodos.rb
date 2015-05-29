# encoding: UTF-8

# Definición de métodos y funciones
#
# Para definir un método, se utiliza la sentencia 'def' seguido de una nombre
# La definición del nombre tiene las mismas consideraciones que la definición de variables,
# además que se pueden utiliza '?', '!' o '=' como sufijo
# En todos los bloques de codigo retorna el resultado de la última linea,
# por lo que no es necesario agregar la sentencia 'return',
# a no ser que se quiere interrumpir el flujo del método 

puts 'Métodos'
puts '-----------'

def hola
  puts 'Hola Mundo'
end

# para invocar al metodo, se usa el nombre

hola() # Invocación de una metodo

# Se pude simplicar eliminando el uso de parentesis
# En sentencias complejas, puede que sea necesario usarlos para que el interprete
# pueda entender el ambito de los parametros enviados
hola

# Definiendo un método con parametros
def hola_alguien(nombre)
  "Hola, #{nombre}"
end

puts hola_alguien('John Doe') # Se imprime el retorno del método
puts hola_alguien 'John Doe' # forma simplificada

# Metodos Bang (!)
# Por convención, si un método modifica los datos del objeto que lo esta invocando,
# o realiza tareas que son suceptibles a errores y se desea forzar su uso,
# se nombran con el sufijo ! (bang)
# 
puts ''
puts 'Métodos !'
puts '-------------'

puts 'cadena = "un string"'
cadena = 'un string'

puts "cadena.upcase  => #{cadena.upcase}"
puts "cadena  => #{cadena}"

puts "cadena.upcase!  => #{cadena.upcase!}"
puts "cadena  => #{cadena}"

# Definición de Alias
# Se pueden definir alias de los metodos existentes

puts ''
puts 'Alias'
puts '-------'

alias :hi_someone :hola_alguien
puts hi_someone('Jon Snow')