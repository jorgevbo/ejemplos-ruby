# encoding: UTF-8

# Tipos de datos numericos
# Numeric es la clase base para todos los valores numericos, a partir de alli
# estos se separan en Enteros y Flotantes

# Integer es la clase base para valores enteros, la cual implementa los metodos
# comunes para las clases derivadas Fixnum, Bignum

# Fixnum es el tipo básico de Entero
entero = 123
puts "entero = #{entero}"
puts "entero es un #{entero.class}"
puts "123.class => #{123.class}"

# Bignum es un entero que se encuentra fuera del rango de valores de un Fixnum
# que es la cantidad de bit-1 del procesador (enteros de 32 bits, enteros de 64 bits)
# Ruby calcula automaticamente que tipo de datos usar al asignar un valor (Si Fixnum o Bignum)
bignumber = 12345678912345678900
puts "bignumber = #{bignumber}"
puts "bignumber es un #{bignumber.class}"
puts "12345678912345678900 => #{12345678912345678900.class}"

# Float es la clase usada para representar numeros reales (flotantes)
flotante = 3.14159
puts "flotante = #{flotante}"
puts "flotante es una #{flotante.class}"
puts "3.14159 => #{3.14159.class}"

