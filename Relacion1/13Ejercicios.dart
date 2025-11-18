/* 
 * Ejercicio 13: División mediante restas sucesivas
 * 
 * Este programa calcula el cociente y el resto de una división
 * sin usar los operadores ~/ (división entera) ni % (módulo).
 * 
 * Método:
 * - Restar el divisor del dividendo repetidamente
 * - Contar cuántas veces se puede restar (cociente)
 * - Lo que queda cuando ya no se puede restar más es el resto
 */

void main() {
  // Números para la división: n1 / n2
  int n1 = 10;  // Dividendo
  int n2 = 4;   // Divisor

  // Variables para almacenar el resultado
  int cociente = 0;  // Cuántas veces cabe n2 en n1
  int resto = n1;    // Lo que sobra después de las restas

  // Bucle: restar n2 de resto mientras sea posible
  while (resto >= n2) {
    resto -= n2;    // Restar el divisor
    cociente++;     // Incrementar el contador de restas
  }
  
  // Mostrar resultados
  print("El cociente es: ${cociente} y el resto es: ${resto}");
  // Output esperado: cociente = 2, resto = 2 (porque 10 = 4*2 + 2)
}
