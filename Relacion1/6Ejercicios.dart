/* 
 * Ejercicio 6: Calculadora básica con entrada de usuario
 * 
 * Este programa demuestra:
 * - Lectura de entrada del usuario desde consola
 * - Uso de stdin.readLineSync() para leer texto
 * - Conversión segura de String a int con tryParse()
 * - Operador ?? para proporcionar valor por defecto si es null
 * 
 * NOTA: Este ejercicio está incompleto (falta implementar las operaciones)
 */

import 'dart:io';       // Para stdin/stdout (entrada/salida estándar)
import 'dart:convert';  // Para codificación de caracteres (utf8)

void main(List<String> args) {
  // Declaración de variables (sin inicializar)
  int var1;
  int var2;
  String var3;

  // Solicitar al usuario que ingrese un operador (+, -, *, /)
  print('Porfavor ingresa un operador: ');
  String? operador = stdin.readLineSync(encoding: utf8);  // Lee línea desde consola

  // Solicitar el primer número
  print('Introduce los numeros: 1. ');
  // tryParse intenta convertir String a int, devuelve null si falla
  // El operador ?? proporciona '' como valor por defecto si readLineSync devuelve null
  int? num1 = int.tryParse(stdin.readLineSync(encoding: utf8) ?? '');

  // TODO: Completar con lectura del segundo número y realizar la operación
}