/* 
 * Ejercicio 20: Estadísticas de temperatura mensual
 * 
 * Este programa simula temperaturas aleatorias para 30 días y calcula:
 * - La temperatura máxima y en qué días ocurrió
 * - La temperatura mínima y en qué días ocurrió
 * 
 * Demuestra el uso de:
 * - Map para almacenar datos relacionados (día -> temperatura)
 * - reduce() para encontrar máximos y mínimos
 * - where() y map() para filtrar y transformar datos
 */

import 'dart:math';  // Para Random() y funciones max/min

/// Genera un Map con temperaturas aleatorias para 30 días
Map<int, int> estadisticaTiempo() {
  Map<int, int> tiempo = {};  // Map: clave=día, valor=temperatura
  
  // Generar temperatura aleatoria para cada día del mes
  for (int dia = 1; dia <= 30; dia++) {
    // Temperatura entre 10°C y 50°C
    int temperatura = Random().nextInt(41) + 10;  // nextInt(41) da 0-40, +10 da 10-50
    tiempo[dia] = temperatura;
  }
  return tiempo;
}

/// Calcula y muestra las temperaturas máxima y mínima con sus días
void maximasYMinimas(Map<int, int> tiempo) {
  // Encontrar la temperatura máxima usando reduce()
  // reduce() aplica una función (max) a todos los valores
  int maxTemp = tiempo.values.reduce(max);
  print(maxTemp);
  
  // Encontrar la temperatura mínima
  int minTemp = tiempo.values.reduce(min);
  print(minTemp);

  // Encontrar TODOS los días que tuvieron la temperatura máxima
  List<int> diasMax = tiempo.entries          // Obtener pares (día, temperatura)
      .where((entry) => entry.value == maxTemp)  // Filtrar solo los días con temp máxima
      .map((entry) => entry.key)                 // Extraer solo el número del día
      .toList();                                 // Convertir a lista

  // Encontrar TODOS los días que tuvieron la temperatura mínima
  List<int> diasMin = tiempo.entries
      .where((entry) => entry.value == minTemp)
      .map((entry) => entry.key)
      .toList();

  // Mostrar resultados
  print("Temperatura máxima: $maxTemp en los días: $diasMax");
  print("Temperatura mínima: $minTemp en los días: $diasMin");
}

void main() {
  // Generar y mostrar las temperaturas del mes
  print(estadisticaTiempo());
  
  // Calcular y mostrar máximas y mínimas
  // NOTA: Se genera un nuevo conjunto de datos, no usaría los mismos del print anterior
  maximasYMinimas(estadisticaTiempo());
}