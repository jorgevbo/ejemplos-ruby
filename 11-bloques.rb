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