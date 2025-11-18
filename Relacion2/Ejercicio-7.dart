/* 
 * Ejercicio 7: Factorial recursivo
 * 
 * Este programa calcula el factorial de un número usando RECURSIÓN.
 * 
 * Definición: n! = n * (n-1) * (n-2) * ... * 2 * 1
 * 
 * Fórmula recursiva: factorial(n) = n * factorial(n-1)
 * Caso base: factorial(1) = 1
 * 
 * Ejemplo con n=5:
 * 5! = 5 * 4!
 *    = 5 * (4 * 3!)
 *    = 5 * 4 * (3 * 2!)
 *    = 5 * 4 * 3 * (2 * 1!)
 *    = 5 * 4 * 3 * 2 * 1 = 120
 */

/// Función recursiva que calcula el factorial de un número
int calcularFactorial(int n) {
  // Caso base: el factorial de 1 es 1
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

  // Calcular el factorial y guardar el resultado
  int resultado = calcularFactorial(n);

  // Mostrar el resultado
  print("El factorial de ${n} es: ${resultado}");
  // Output esperado: 120 (5*4*3*2*1)
}