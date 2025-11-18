/* 
 * Ejercicio 14: Suma recursiva de los primeros N números naturales
 * 
 * Este ejercicio es idéntico al Ejercicio-6.
 * Implementa la suma de los primeros N números naturales usando recursión.
 * 
 * Fórmula recursiva: suma(n) = n + suma(n-1)
 * Caso base: suma(1) = 1
 */

/// Función recursiva que suma los primeros N números naturales
int sumarNPrimerosNumerosNaturales(int n) {
  // Caso base: cuando llegamos a 1, devolver 1
  if (n == 1){
    return 1;
  } 
  // Caso recursivo: sumar n más la suma de los n-1 anteriores
  else {
    return n + sumarNPrimerosNumerosNaturales(n - 1);
  }
}

void main() {
  int n = 5;
  
  print("La suma de los ${n} primeros numeros es: ${sumarNPrimerosNumerosNaturales(n)}");
  // Output esperado: 15 (1+2+3+4+5)
}