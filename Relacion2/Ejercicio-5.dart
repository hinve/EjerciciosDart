/* 
 * Ejercicio 5: Funciones que devuelven valores
 * 
 * Este programa repite el ejercicio del desplazamiento horario,
 * pero ahora la función DEVUELVE el DateTime calculado en lugar
 * de imprimirlo directamente.
 * 
 * Diferencia con Ejercicio-2:
 * - Ejercicio-2: la función imprime (void)
 * - Ejercicio-5: la función devuelve (DateTime) y el main imprime
 */

import 'dart:core';

/// Función que calcula y DEVUELVE la fecha/hora desplazada
/// @param horas: cantidad de horas a sumar o restar
/// @return DateTime con la hora modificada
DateTime mostrarFechaYHora(int horas) {
  // Obtener hora actual
  DateTime ahora = DateTime.now();
  
  // Calcular nueva hora sumando/restando horas
  DateTime nuevaHora = ahora.add(Duration(hours: horas));
  
  // Devolver el resultado (no imprimir aquí)
  return nuevaHora;
}

void main() {
  // Llamar a la función y guardar el resultado en una variable
  DateTime fechaCambiada = mostrarFechaYHora(-5);

  // Imprimir el resultado desde el main
  print("La fecha modificada es: ${fechaCambiada}");
}