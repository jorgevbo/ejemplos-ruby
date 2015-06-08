# encoding: UTF-8
# 
# Herencia
# 
# Al igual que otros lenguajes de programación, en ruby se soporta la herencia
# de clases. Solo se puede realizar herencia simple (una sola clase)
# Se utiliza el operador < después del nombre de la clase

# Definición de una clase base
class Figura
  def initialize(nombre)
    @nombre = nombre
  end

  def area
    0
  end

  def to_s
    @nombre
  end
end

# Definimos una clase derivada
class Cuadrado < Figura            # Se define que Cuadrado hereda de Figura

  def initialize(val_lado = 0)     # Por metaprogramación, es posible sobreescribir las definiciones previas
    super('Cuadrado')              # Se usa la sentencia super para llamar a los métodos de la clase padre, desde las clases hijas
    @val_lado = val_lado.to_i
  end

  def area
    @val_lado * @val_lado
  end
end

c1 = Cuadrado.new(3)
puts "Area de #{c1.to_s}: #{c1.area}"