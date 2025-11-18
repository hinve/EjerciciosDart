/* 
 * Ejercicio 6: Suma recursiva de los primeros N números naturales
 * 
 * Este programa calcula la suma de los primeros N números naturales
 * usando RECURSIÓN (una función que se llama a sí misma).
 * 
 * Fórmula recursiva: suma(n) = n + suma(n-1)
 * Caso base: suma(1) = 1
 * 
 * Ejemplo con n=5:
 * suma(5) = 5 + suma(4)
 *         = 5 + (4 + suma(3))
 *         = 5 + 4 + (3 + suma(2))
 *         = 5 + 4 + 3 + (2 + suma(1))
 *         = 5 + 4 + 3 + 2 + 1 = 15
 */

/// Función recursiva que suma los primeros N números naturales
int sumarNPrimerosNumerosNaturales(int n) {
  int res = 0;  // Variable local (no se usa en esta versión)

  // Caso base: cuando n es 1, devuelve 1
  if (n == 1){
    return 1;
  } 
  // Caso recursivo: suma n más el resultado de suma(n-1)
  else {
    return n + sumarNPrimerosNumerosNaturales(n - 1);
  }
}

void main() {
  int n = 5;
  
  // Llamar a la función recursiva e imprimir el resultado
  print("La suma de los ${n} primeros numeros es: ${sumarNPrimerosNumerosNaturales(n)}");
  // Output esperado: 15 (1+2+3+4+5)
}