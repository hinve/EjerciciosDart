/* 
 * Ejercicio 3: Diferencia entre const y final
 * 
 * Este programa demuestra la diferencia entre:
 * - const: constante en tiempo de compilación (valor conocido antes de ejecutar)
 * - final: constante en tiempo de ejecución (valor asignado una vez, no modificable)
 */

import 'dart:math';

void main() {
  // const: valor constante conocido en tiempo de compilación
  // Debe tener un valor literal que no dependa de cálculos en tiempo de ejecución
  const double PI = 3.14;

  // Variable que se calcula en tiempo de ejecución
  int anyo = 2025;
  
  // final: valor asignado una vez en tiempo de ejecución, después es inmutable
  // Se usa cuando el valor depende de cálculos o variables que solo se conocen al ejecutar
  final int diasDelAnyo = anyo % 4 == 0 ? 365 : 366;  // Calcula si es año bisiesto

  // NOTA: Si intentas usar 'const' en lugar de 'final' para diasDelAnyo, dará error
  // porque el valor depende de una variable (anyo) que no es constante en compilación
  // const int diasDelAnyo = anyo % 4 == 0 ? 365 : 366;  // ❌ ERROR
}