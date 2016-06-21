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

puts '------------'
puts 'Cardinalidad'
puts '------------'

# '*' se usa para validar de 0 a más repeticiones

/backup_.*/ =~ 'backup_123' # Válido, se esperá cualquier cantidad de caracter 
/backup_.*/ =~ 'backup_' # Válido debido a que no hay 0 caracteres

# '+' se usa para validar de 1 a más repeticiones

/.+@mail.com/ =~ 'jorge@mail.com' # Válido. Hay caracteres antes del @mail.com
/.+@mail.com/ =~ '@mail.com' # No válido.

# '?' se usa para validar de 0 a 1 repetición

/variable_?\d+/ =~ 'variable_1' # Válido. Puede tener '_' antes de un número
/variable_?\d+/ =~ 'variable2' # Válido. Caso en que no exite '_'
/variable_?\d+/ =~ 'variable_abc' # No válido. La última parte del nombre debe ser un número

# {m,n}: Este tipo de cardinalidad permite definir cantidad mínima y máxima de repeticiones

/(abc){2,3}/ =~ 'abcabcabc' # Válido. El grupo se repite entre 2 y 3 veces
/(abc){2,3}/ =~ 'abcabcabcabc' # Válido. El grupo se repite entre 2 y 3 veces. La cuarta vez no se toma en cuenta
/(abc){2,3}/ =~ 'abc' # No válido. El grupo solo se repite una vez

/\d{2,}/ =~ '12345' # Válido. 2 o más dígitos
/\d{2,}/ =~ '2' # No valido. Solo un dígito

/\d{5}\.00/ =~ '12345.00' # Válido. Solo 5 dígitos
/\d{5}\.00/ =~ '1234.00' # No válido. Menos de 5 dígitos
/\d{5}\.00/ =~ '1234567.00' # Válido. Sin embargo, solo se toma en cuenta '34567.00'

puts '-----------------------'
puts 'Agrupadores y rangos'
puts '-----------------------'
