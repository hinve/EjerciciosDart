/* 
 * Ejercicio 9: Tablas de multiplicar del 1 al 10
 * 
 * Este programa muestra todas las tablas de multiplicar del 1 al 10,
 * utilizando bucles anidados (un bucle dentro de otro).
 * Cada tabla se separa con una línea de guiones.
 */

import 'dart:io';  // Import necesario (aunque no se usa stdin aquí)

void main() {
  // Bucle externo: itera del 1 al 10 para cada tabla
  for(int i = 1; i <= 10; i++) {
    
    // Bucle interno: genera cada multiplicación de la tabla actual
    for(int j = 1; j <= 10; j++) {
      print("${i} * ${j} = ${i * j}");
    }
    
    // Separador visual entre tablas
    print("--------");
  }
  
  // Ejemplo de salida:
  // 1 * 1 = 1
  // 1 * 2 = 2
  // ...
  // --------
  // 2 * 1 = 2
  // 2 * 2 = 4
  // ...
}