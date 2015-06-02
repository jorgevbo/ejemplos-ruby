# encoding: UTF-8
# 
# Accesores
# Los accesores son los metodos para asignar y obtener los valores de los atributos
# dentro de una clase. Los típicos getters y setters de otros lenguajes
# 
# Existen helpers que permiten la generación de estos métodos:

# Partiendo de esta clase base
class Persona
  def initialize(nombre, apellido)
    @nombre = nombre
    @apellido = apellido
  end
end

# Para acceder a los atributos, normalmente, se crean los atributos setters y getters
class Persona
  def nombre
    @nombre
  end

  def nombre=(val)         # Los metodos '=' son especiales, ya que permiten la asignación
    @nombre = val
  end

  def apellido
    @apellido
  end

  def apellido=(val)
    @apellido = val
  end
end

puts '--------'
p1 = Persona.new('John', 'Doe')
puts p1.nombre
p1.nombre = 'Juan'
puts p1.nombre

# Usando helpers, se puede simplificar esta clase:
# - attr_reader, permite indicar que atributos pueden ser leidos (getters)
# - attr_writer, permite indicar que atributos pueden ser escritos (setters)
class Persona2
  attr_reader :nombre, :apellido
  attr_writer :nombre, :apellido

  def initialize(nombre, apellido)
    @nombre = nombre
    @apellido = apellido
  end
end

puts '--------'
p2 = Persona2.new('Juan', 'Perez')
puts p2.apellido
p2.apellido = 'Smith'
puts p2.apellido

# Existe un tercer helpers, attr_accesor, que se usa en el caso de definir que un atributo
# es de lectura y escritura al mismo tiempo

class Persona3
  attr_accessor :nombre, :apellido

  def initialize(nombre, apellido)
    @nombre = nombre
    @apellido = apellido
  end
end

puts '--------'
p3 = Persona3.new('Pedro', 'Perez')
puts p3.apellido
p3.apellido = 'Picapiedra'
puts p3.apellido
