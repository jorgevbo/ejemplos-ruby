# encoding: UTF-8

# Clases y objetos
# 
# Las clases se definen con la instrucción 'class'
# Por convención, los nombres de clase se nombran en CamelCase, donde el primer
# caracter debe encontrarse en Mayúscula
# Para definir el contructor de una clase,
# se debe implementar el método initialize()
# Los atributos de la clase se definen dentro del contructor
# nombrandolos con '@' por delante
#
# Todas las clases creadas heredan de la clase base Object, por lo que también
# se tiene acceso a sus métodos

puts 'Definición de clase'
puts '--------------------'
class Perro                # Firma de la clase
  def initialize(nombre)   # Constructor
    @nombre = nombre
  end

  def ladrar               # Definición de un método de la instancia
    'Guau!'
  end

  def to_s                 # Sobre escritura del método to_s de Object
    "El Perro #{@nombre}"
  end
end

# Para instanciar un clase, se debe llamar a new()
puts ''
puts 'Instanciando clase'
puts '--------------------'

fido = Perro.new 'Fido'
puts fido.ladrar
puts "#{fido}"

# Algunos metodos heredados de Object
fido.respond_to? :volar    # respond_to? verifica si existe un método
fido.is_a? String          # is_a? verifica si el objeto es la instancia de una Clase en particular

# para liberar la referencia al objeto, basta con asignarle el valor nil (nulo)
# No es necesario realizarlo, ya que el recolector de basura del interprete se encargará
# de limpiar y eliminar los objetos que no se usen ni se referencien
fido = nil

# Definición de Atributos y métodos
# ---------------------------------
# 
# Dentro de una clase, también se pueden definir CONSTANTES y "atributos de clase"
# - Las constantes se definen dentro del bloque class
# - Los atributos de clase son una forma de representar atributos Singleton y se nombran con @@ por delante
# 
# Los métodos se pueden diferenciar en:
# - Metodos de instancia: Son los métodos que se acceden a partir de un objeto instanciado.
#   Son los métodos comúnmente usados
# - Métodos de clase: Es el nombre que se le dá a los métodos estáticos de otros lenguajes de programación
#
# Para definir un método de clase, se usa la sentencia self. delante del nombre del método
# De igual forma, se usa self, dentro de la clase, para llamar a dichos metodos.
# 
# Para invocar a las constantes, atributos de clase y métodos de clase, se usa el nombre de dicha clase y no así,
# una instancia. Aunque, por metaprogramación, estos elementos son accesibles desde una instancia,
# se desaconseja llamarlos de esa forma, para que el código pueda fácil de comprender

puts ''
puts 'Definición de metodos y atributos de clase'
puts '--------------------------------------------'

class Math2
  PI = 3.1416            # Definimos una constrante
  @@dato = 1             # Definimos un atributo de clase

  def self.dato          # Definimos un metodo que nos permita acceder al singleton
    @@dato
  end

  def self.dato=(val)    # Definimos un metodo que nos permite modificar el valor del singleton
    @@dato = val
  end


  def self.redondear(val, dec = 2)  # Definiendo un metodo de clase (self)
    val.round(dec)
  end

  def metodo_de_instancia(valor, dec)   # Definiendo un metodo de instancia
    self.redondear(valor, dec)          # Llamando a un método de clase
  end
end

puts Math2::PI      # Para llamar a una constante de una clase, se usa el operador ::
puts Math2.dato     # llamamos al metodo estatico para que retorne el valor del singleton
Math2.dato += 1     # El atributo es un Singleton, por lo que pude manipularse'su valor a traves de toda la aplicación
puts Math2.dato
puts Math2.redondear(5.1587, 1) # Llamando a un método de clase
