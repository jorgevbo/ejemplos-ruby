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

# Se usan parentesis para realizar agrupaciones de caracteres.
# Así, la cardinalidad se puede aplicar a un grupo
/(abc)+/ =~ '123abcxyz'  # Válido. Al menos una ocurrencia del grupo "abc"
/(abc)+/ =~ '123xyz'  # No Válido.
/(a|b|c)+/ =~ 'aaa'  # Válido. Hacemos uso de OR "|", por lo que se espera a, b ó c
/(a|b|c)+/ =~ 'xyz' # No válido. Ninguno de los 3 caracteres sugeridos
/(a|b|c)+/ =~ 'qwertyc' # Válido. Al menos una c

# Para definir rangos de caracteres, usamos []
/[0-9]+/ =~ '1234' # Válido. Se esperan dígitos del 0 al 9
/[A-z]+/ =~ 'Hola' # Válido. Se esperan letras mayúsculas o minúsculas
/[A-z_ ]+/ =~ 'Hola Mundo' # Válido. Agregamos al rango el caracter '_' y el espacio

# Podemos usar '^' al inicio del grupo o rango para indicar que no debe existir esa ocurrencia en la cadena
/(^abc)+/ =~ '123xyz' # Válido.
/[^0-9]/ =~ 'Hola Mundo' # Válido.

puts '------------------------------'
puts 'Indicadores de inicio y fin'
puts '------------------------------'

# Si definimos '^' al inicio de la expresión, estamos indicando la ocurrencia debe aparecer
# al inicio de la cadena evaluada

/^(backup_)/ =~ 'backup_20161212.zip' # Válido, el nombre empieza por 'backup_'
/^(backup_)/ =~ '20161212_backup_1.zip' # No válido

# Si colocamos '$' al final de la expresión, indicamos que la ocurrencia debe aparecer
# al final de la cadena evaluada
/(.txt|.docx)$/ =~ 'fichero.txt' # Válido. El nombre termina con '.txt'
/(.txt|.docx)$/ =~ 'fichero.txt.zip' # No válido

puts '-------------------'
puts 'Alias'
puts '-------------------'

# Existen caracteres especiales usados como alias de la definición de rangos:
# \d => Para indicar un dígito. Alias de [0-9]
# \D => Para indicar que no debe ser un dígito. Alias de [^0-9]

/\d+\.00/ =~ '12345.00' # Válido
/\D+/ =~ 'ABCDEF' # Válido

# \w => Para indicar un caracter alfanumérico. Alias de [A-z0-9]
# \W => Para indicar que no debe ser un caracter alfanumérico. Alias de [^A-z0-9]

/\w+/ =~ 'Abracadabra123' # Válido
/\W+/ =~ 'Abracadabra123' # No Válido

# \s => Para iniciar un espacio en blanco. Pueden ser espacios, tabulaciones o salto de linea
# \S => Para iniciar que no debe ser un espacio en blanco.

/\w+\s\w+/ =~ 'Juan Perez' # Válido
/\S+/ =~ '   ' # No válido


# Un caso especial son las opciones, que se denotan por un caracter al final de la expresión regular
# 
# i => Para indicar que son incensibles a mayúsculas y minúsculas 
/abc/i =~ 'ABC' # Válido
/abc/i =~ 'abc' # Válido
/abc/i =~ 'aBc' # Válido

# x => Ignora espacios en blanco y comentarios
/abc/x =~ 'abc # Comentario' # Válido


puts '-------------------'
puts 'Operaciones'
puts '-------------------'

puts 'Operador =~'
puts '---------------'

# Permite realizar comprobación rápida de una expresión regular.
# Retorna el número de posición donde inicia la ocurrencia. Nil en caso de no existir.
# 
/@mail.com/ =~ 'jdoe@mail.com'  # Retorna 4
/@mail.com/ =~ 'jorge@correo.com' # Retorna nil

# Se puede realizar asignación a variables con los valores encontrados mediante el uso de grupos
/(?<nombre>.+)@(?<host>.+)/ =~ 'jdoe@mail.com'
puts nombre  # Imprime 'jdoe'
puts host    # Imprime 'mail.com'

puts ''
puts 'Método .match()'
puts '--------------------'

# Método del objeto Regexp creado.
# Retorna una instancia de MatchData con la ocurrencia encontrado. Caso contrario, nil

/@mail.com/.match('jdoe@mail.com')  # Retorna MatchData "@mail.com"
/@mail.com/.match('jorge@correo.com')  # Retorna nil

# También es posible asignar variables al momento de realizar la comprobación.
# En este caso, el objeto MatchData actua como un Hash y crea indices con los nombres de las variables
res = /(?<nombre>.+)@(?<host>.+)/.match('jdoe@mail.com')
puts res[:nombre]   # Imprime 'jdoe'

# Con el MatchData, podemos hacer que actue como un Array. No es necesario definir un nombre de variable,
# se crea un elemento por cada grupo identificado y se accede a traves de un indice numérico.
# El indice "0" se usa para el texto encontrado, por lo que los grupos se encuentran a partir del indice 1.
res = /(.+)@(.+)/.match('jdoe@mail.com')
puts res[1]   # Imprime 'jdoe'
