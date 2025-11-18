/* 
 * Ejercicio 1: Mostrar fecha y hora actual
 * 
 * Este programa utiliza la clase DateTime de Dart para obtener
 * y mostrar la fecha y hora actual del sistema.
 */

/// Función que obtiene y muestra la fecha y hora actual
void mostrarFechaYHora() {
  // DateTime.now() devuelve un objeto DateTime con la fecha/hora actual
  DateTime ahora = DateTime.now();
  
  // Mostrar la fecha y hora en formato estándar
  print('Fecha y hora actuales: $ahora');
  // Ejemplo de salida: 2025-11-18 14:30:45.123456
}

void main() {
  mostrarFechaYHora();
}