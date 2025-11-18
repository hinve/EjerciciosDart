/* 
 * Ejercicio 15: Factorial recursivo
 * 
 * Este ejercicio es idéntico al Ejercicio-7.
 * Calcula el factorial de un número usando recursión.
 * 
 * Definición: n! = n * (n-1) * (n-2) * ... * 2 * 1
 * Fórmula recursiva: factorial(n) = n * factorial(n-1)
 * Caso base: factorial(1) = 1
 */

/// Función recursiva que calcula el factorial
int calcularFactorial(int n) {
  // Caso base: factorial de 1 es 1
  if(n == 1) {
    return 1;
  } 
  // Caso recursivo: n! = n * (n-1)!
  else {
    return n * calcularFactorial(n - 1);
  }
}

void main () {
  int n = 5;

  int resultado = calcularFactorial(n);

  print("El factorial de ${n} es: ${resultado}");
  // Output esperado: 120 (5*4*3*2*1)
}