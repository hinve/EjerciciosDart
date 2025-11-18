/* 
 * Ejercicio 14: Simulador de lanzamiento de dado
 * 
 * Este programa simula el lanzamiento de un dado de 6 caras
 * generando un número aleatorio entre 1 y 6.
 */

import 'dart:math';  // Para Random() y generación de números aleatorios

/// Función que simula el lanzamiento de un dado
void lanzarDado() {
  // Generar número aleatorio entre 1 y 6
  // Random().nextInt(6) genera números de 0 a 5, por eso sumamos 1
  int res = Random().nextInt(6) + 1;
  
  // Mostrar el resultado del lanzamiento
  print("El valor del dado es: ${res}");
}

void main() {
  // Lanzar el dado una vez
  lanzarDado();
}