/* 
 * Ejercicio 11: Cálculo del factorial de un número
 * 
 * El factorial de un número n (escrito n!) es el producto de todos
 * los enteros positivos desde 1 hasta n.
 * Por ejemplo: 5! = 1 * 2 * 3 * 4 * 5 = 120
 */

void main() {
  // Número del cual calcular el factorial
  int n = 5;
  
  // Variable acumuladora, empieza en 1 (elemento neutro de la multiplicación)
  int resultado = 1;
  
  // Bucle que multiplica todos los números desde 1 hasta n
  for(int i = 1; i <= n; i++) {
    resultado *= i;  // Equivalente a: resultado = resultado * i
  }
  
  // Mostrar el resultado
  print("El factorial de 5 es: ${resultado}");
  // Output esperado: 120 (1*2*3*4*5)
}