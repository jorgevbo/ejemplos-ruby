# encoding: UTF-8
# 
# Yield
# 
# Yield se usa para definir que un metodo puede recibir un bloque de código durante su ejecución
# esto permite la Injección de código.
# Un claro ejemplo de uso es en los iteradores .each
# 
puts 'Definiendo metodos con yield'
puts '--------------------------------'


def mi_metodo
  puts 'inicio'
  yield
  puts 'fin'
end
# llamando a un metodo enviandole un bloque de codigo
mi_metodo do
  puts 'codigo inyectado'
end

puts '-----'

mi_metodo { puts 'codigo inyectado de forma simplificada' } # Forma simplificada

# El yield también puede enviar parametros al bloque de código, como si fuera una llamada de metodo

def ejecutar_accion
  ejecutor = {nombre: 'Juan', apellido: 'Perez'}

  yield ejecutor
end

puts '-----'

ejecutar_accion do |a|
  puts "LOG: #{a[:nombre]} #{a[:apellido]} ha realizado la acción"
end


# PROC y Lambda
# 
# Las expresiones Lambda son instancias de objetos que permiten manipular bloques de código
# para su posterior ejecución. A diferencia de yield, se debe llamar al metodo .call()
# del objeto para que se ejecute el bloque
# 
puts ''
puts 'Proc y Lambda'
puts '------------------'

# Instanciando un bloque de código
prc = lambda { puts 'hola mundo' } # forma corta
prc.call # se debe llamar a call para ejecutar las instrucciones

saludo = lambda do    # Forma larga
  puts 'Otro saludo'
end
saludo.call
puts "saludo.class => #{saludo.class}"

puts '----------------'
# También se pueden definir parametros en el bloque
prc_con_parametros = lambda { |nombre| puts "Hola, #{nombre}" }
prc_con_parametros.call('John Smith')


puts '----------------'
# Al ser un objeto, se pueden manejar como una variable más
def mi_metodo(bloque)
  puts 'inicio'
  bloque.call
  puts 'fin'
end
mi_metodo(saludo)
