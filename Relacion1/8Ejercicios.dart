/* 
 * Ejercicio 8: Tabla de multiplicar
 * 
 * Este programa solicita un número al usuario y muestra su tabla de multiplicar
 * del 1 al 10. Incluye manejo de excepciones para entrada inválida.
 */

import 'dart:io';  // Para entrada/salida de consola

void main() {
  // Solicitar al usuario que ingrese un número
  print("Ingrese un numero para ver su tabla de multiplicar:");
  
  int? num;  // Variable nullable para almacenar el número
  
  // Bloque try-catch para manejar errores de conversión
  try {
    // Intentar convertir la entrada de texto a número entero
    num = int.parse(stdin.readLineSync()!);
  } catch (e) {
    // Si la conversión falla (entrada inválida), mostrar error y salir
    print("Error: Por favor, ingrese un numero valido.");
    return;  // Termina la ejecución del programa
  }

  // Generar la tabla de multiplicar del 1 al 10
  for(int i = 1; i <= 10; i++) {
    print("${num} * ${i} = ${num * i}");
  }
}