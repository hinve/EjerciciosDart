/* 
 * Ejercicio 18: Secuencia de Fibonacci (versión iterativa)
 * 
 * Este programa genera los primeros N números de la secuencia de Fibonacci.
 * 
 * Secuencia de Fibonacci:
 * Cada número es la suma de los dos anteriores.
 * Secuencia: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...
 * 
 * Fórmula: F(n) = F(n-1) + F(n-2)
 * Casos base: F(0) = 0, F(1) = 1
 */

/// Genera los primeros N números de Fibonacci de forma iterativa
List<int> calcularFibonacci(int n) {
  List<int> fibonacci = [];  // Lista para almacenar la secuencia
  
  // Generar cada número de la secuencia
  for (int i = 0; i < n; i++) {
    // Primer número de Fibonacci: 0
    if (i == 0) {
      fibonacci.add(0);
    } 
    // Segundo número de Fibonacci: 1
    else if (i == 1) {
      fibonacci.add(1);
    } 
    // Resto de números: suma de los dos anteriores
    else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }
  
  return fibonacci;
}

void main() {
  int n = 5;
  List<int> numeros = calcularFibonacci(n);

  print("Los primeros ${n} números de la secuencia de Fibonacci son: ${numeros}");
  // Output esperado: [0, 1, 1, 2, 3]
}