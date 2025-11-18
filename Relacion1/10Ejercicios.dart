/* 
 * Ejercicio 10: Suma de los primeros N números naturales
 * 
 * Este programa calcula la suma de los primeros N números naturales
 * utilizando un bucle for.
 * Por ejemplo, para n=5: 0 + 1 + 2 + 3 + 4 + 5 = 15
 * 
 * Fórmula alternativa: n * (n + 1) / 2
 */

void main() {
  // Número hasta el cual sumar
  int n = 5;
  
  // Variable acumuladora para almacenar la suma
  int resultado = 0;
  
  // Bucle que suma todos los números desde 0 hasta n (inclusive)
  for(int i = 0; i <= n; i++) {
    resultado += i;  // Equivalente a: resultado = resultado + i
  }
  
  // Mostrar el resultado final
  print("El resultado de la suma de los 5 primeros numeros es: ${resultado}");
  // Output esperado: 15 (0+1+2+3+4+5)
}