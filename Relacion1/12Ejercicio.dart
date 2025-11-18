/* 
 * Ejercicio 12: Máximo Común Divisor (MCD) - Algoritmo de Euclides
 * 
 * El algoritmo de Euclides calcula el MCD de dos números mediante
 * divisiones sucesivas. El MCD es el número más grande que divide
 * a ambos números sin dejar resto.
 * 
 * Funcionamiento:
 * 1. Dividir el número mayor entre el menor
 * 2. Reemplazar el mayor por el menor, y el menor por el resto
 * 3. Repetir hasta que el resto sea 0
 * 4. El MCD es el último divisor (cuando resto = 0)
 */

void main() {
  // Números para calcular el MCD
  int num1 = 10;
  int num2 = 3;

  // Bucle del algoritmo de Euclides
  while (num2 != 0) {
    int res = num1 % num2;  // Calcular el resto de la división
    num1 = num2;            // El divisor pasa a ser el dividendo
    num2 = res;             // El resto pasa a ser el nuevo divisor
  }
  
  // Cuando num2 es 0, num1 contiene el MCD
  print("El máximo común divisor es: ${num1}");
  // Output esperado: 1 (porque 10 y 3 no comparten divisores comunes excepto 1)
}
