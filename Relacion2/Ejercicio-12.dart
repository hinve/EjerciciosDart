/* 
 * Ejercicio 12: Máxima y mínima temperatura con Map
 * 
 * Intento de mejorar el Ejercicio-11 usando un Map para asociar
 * días con temperaturas.
 * 
 * ⚠️ ADVERTENCIA: Este código tiene varios errores lógicos:
 * 1. getMinTemp intenta acceder a temperaturas[0], pero las claves son 23, 24, 25, 26
 * 2. getMaxTemp compara keys en lugar de values
 * 3. Se modifica el Map mientras se recorre (removeWhere)
 * 4. La lógica de búsqueda no es correcta
 */

import 'dart:math';

/// Intenta encontrar la temperatura mínima (implementación incorrecta)
int getMinTemp(Map temperaturas) {
  // ERROR: temperaturas[0] no existe si las claves son 23, 24, 25, 26
  int minTemp = temperaturas[0];

  int i = temperaturas.length;
  print(temperaturas);
  while(i > 0) {
    // ERROR: temperaturas[--i] accede por índice, no por clave
    minTemp = min(minTemp, temperaturas[--i]);
  }

  return minTemp;
}

/// Intenta encontrar la temperatura máxima (implementación incorrecta)
int getMaxTemp(Map temperaturas) {
  // Obtiene el primer valor del Map
  int maxTemp = temperaturas.values.first;

  int i = temperaturas.length;
  print(temperaturas);
  while(i > 0) {
    // ERROR: Compara con keys (días) en lugar de values (temperaturas)
    maxTemp = max(maxTemp, temperaturas.keys.last);
    // ERROR: Modifica el Map mientras lo recorre
    temperaturas.removeWhere((key, value) => (key == temperaturas.keys.last));
  }

  return maxTemp;
}

void main () {
  // Map donde clave = día, valor = temperatura
  Map temperaturas = {
    23: 5,   // Día 23: 5°
    24: 6,   // Día 24: 6°
    25: 6,   // Día 25: 6°
    26: 35   // Día 26: 35°
  };

  print("La temperatura maxima es: ${getMaxTemp(temperaturas)}");
  print("La temperatura minima es: ${getMinTemp(temperaturas)}");
}

/// SOLUCIÓN CORRECTA:
/// Para recorrer valores de un Map:
/// int minTemp = temperaturas.values.reduce(min);
/// int maxTemp = temperaturas.values.reduce(max);