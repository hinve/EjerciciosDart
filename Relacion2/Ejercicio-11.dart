/* 
 * Ejercicio 11: Máxima y mínima temperatura de una lista
 * 
 * Este programa encuentra la temperatura máxima y mínima de una lista,
 * usando las funciones max() y min() de dart:math.
 * 
 * LIMITACIÓN: Solo devuelve el valor de temperatura, no el día.
 * Ver Ejercicio-12 para una solución que usa Map para asociar día-temperatura.
 */

import 'dart:math';  // Para funciones max() y min()

/// Encuentra la temperatura mínima de una lista
int getMinTemp(List temperaturas) {
  // Asumir que la primera temperatura es la mínima inicialmente
  int minTemp = temperaturas[0];


  // Índice que empezará desde el final de la lista
  int i = temperaturas.length;
  print(temperaturas);
  
  // Recorrer la lista de atrás hacia adelante
  while(i > 0) {
    // --i decrementa i y luego accede al elemento
    // min() devuelve el menor de dos valores
    minTemp = min(minTemp, temperaturas[--i]);
  }

  return minTemp;
}

/// Encuentra la temperatura máxima de una lista
int getMaxTemp(List temperaturas) {
  // Asumir que la primera temperatura es la máxima inicialmente
  int maxTemp = temperaturas[0];


  // Índice que empezará desde el final de la lista
  int i = temperaturas.length;
  print(temperaturas);
  
  // Recorrer la lista de atrás hacia adelante
  while(i > 0) {
    // max() devuelve el mayor de dos valores
    maxTemp = max(maxTemp, temperaturas[--i]);
  }

  return maxTemp;
}

void main () {
  // Lista de temperaturas (sin información del día)
  List temperaturas = [5, 5, 5, 5, 7];

  print("La temperatura maxima es: ${getMaxTemp(temperaturas)}");
  print("La temperatura minima es: ${getMinTemp(temperaturas)}");

}

/// REFLEXIÓN:
/// Estas funciones devuelven un valor numérico que queda descontextualizado,
/// perdiendo el dato de en qué día se produjeron las temperaturas.
/// 
/// ¿Cómo solucionarlo?
/// - Opción 1: Usar un Map<int, int> donde la clave es el día y el valor la temperatura
/// - Opción 2: Devolver un record o tupla con (temperatura, día)
/// - Opción 3: Crear una clase Temperature con propiedades dia y valor
/// - Opción 4: Devolver el índice en lugar del valor (para lista)