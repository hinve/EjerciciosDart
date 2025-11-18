/* 
 * Ejercicio 9: Cociente y resto mediante restas sucesivas
 * 
 * Este programa calcula el cociente y el resto de una división entera
 * sin usar los operadores ~/ (división entera) ni % (módulo).
 * 
 * Método de restas sucesivas:
 * - Restar el divisor del dividendo repetidamente
 * - Contar cuántas veces se puede restar (cociente)
 * - Lo que queda cuando ya no se puede restar más (resto)
 * 
 * Similar al algoritmo de Euclides para encontrar el MCD.
 */

/// Calcula el cociente de n1 / n2 mediante restas sucesivas
int calcularCociente(int n1, int n2) {
  // Validación: no se puede dividir entre 0
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  // Validación: solo acepta números no negativos
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  int resultado = 0;   // Contador de restas (cociente)
  int restante = n1;   // Valor que va disminuyendo

  // Mientras se pueda restar n2 de restante
  while (restante >= n2) {
    restante -= n2;    // Restar el divisor
    resultado++;       // Incrementar el cociente
  }

  return resultado;
}

/// Calcula el resto de n1 / n2 mediante restas sucesivas
int calcularResto(int n1, int n2) {
  // Validación: no se puede dividir entre 0
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  // Validación: solo acepta números no negativos
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  int restante = n1;  // Valor que va disminuyendo

  // Restar n2 hasta que restante sea menor que n2
  while (restante >= n2) {
    restante -= n2;
  }

  // Lo que queda es el resto
  return restante;
}

void main() {
  // Calcular cociente y resto de 4 / 2
  int cociente = calcularCociente(4, 2);
  int resto = calcularResto(4, 2);

  print("El cociente es: ${cociente}");  // Output: 2
  print("El resto es: ${resto}");        // Output: 0
}