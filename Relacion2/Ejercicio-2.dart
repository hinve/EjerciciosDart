/* 
 * Ejercicio 2: Desplazamiento horario (hacia adelante o atrás)
 * 
 * Este programa modifica la hora actual sumándole o restándole
 * una cantidad de horas. Usa el método add() con Duration.
 * 
 * - Números positivos: avanzan en el tiempo (futuro)
 * - Números negativos: retroceden en el tiempo (pasado)
 */

import 'dart:core';  // Biblioteca principal de Dart

/// Función que calcula y muestra la hora desplazada N horas
/// @param horas: cantidad de horas a sumar (positivo) o restar (negativo)
void mostrarFechaYHora(int horas) {
  // Obtener la fecha/hora actual
  DateTime ahora = DateTime.now();
  
  // Sumar o restar horas usando add() y Duration
  // Duration(hours: -5) resta 5 horas
  // Duration(hours: 5) suma 5 horas
  DateTime nuevaHora = ahora.add(Duration(hours: horas));
  
  // Mostrar el resultado
  print('Fecha y hora actual más $horas horas: $nuevaHora');
}

void main() {
  // Ejemplo: restar 5 horas a la hora actual
  mostrarFechaYHora(-5);
}