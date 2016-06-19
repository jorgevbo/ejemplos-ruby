# encoding: UTF-8

# Definición de variables:
# Algunas consideraciones al momento de nombrar variables:
# - Deben iniciar con letra minúscula o _.
# - Debe estar compuesta por letras, numeros y _ Ej:
#   mi_variable (OK)
#   _variable_privada (OK)
#   nombrePersona (OK, pero se aconseja usar snake_case)
#   1_var (error)
#   &algo (error)
#   Variable (error, al iniciar con mayuscula, el interprete la considera una constante)
#   
_mi_variable = 'var'
contador_bucle = 10

$a = 1 # Definimos como variable global

# Si se desea definir una constante, esta debe iniciar con Mayuscula.
# Por convención, todos los caracteres del nombre de una constante deben estar en Mayusculas. Ej:
# ENV (OK)
# MATH_PI (0K)
# Lambda (OK, pero es preferible que sea en mayusculas)
# eNVIROMENT (error, se trata como una variable normal)

MATH_PI = 3.1416
RAILS_ENV = 'production'
LANG = 'es'