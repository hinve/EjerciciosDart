/* 
 * Ejercicio 13: Verificador de números primos
 * 
 * Este programa determina si los números del 1 al 100 son primos o no.
 * 
 * Definición de número primo:
 * Un número es primo si solo es divisible por 1 y por sí mismo.
 * Ejemplos: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29...
 * 
 * Nota: 1 NO es primo por definición.
 */

/// Verifica si un número es primo
bool esPrimo(int n) {
  // Casos especiales: números menores o iguales a 1 no son primos
  if (n <= 1) return false;
  
  // Comprobar si n tiene algún divisor entre 2 y n/2
  // Si n es divisible por algún número en este rango, no es primo
  for (int i = 2; i <= n ~/ 2; i++) {
    // ~/ es división entera (descarta decimales)
    if (n % i == 0) return false;  // Encontró un divisor, no es primo
  }
  
  // Si no se encontraron divisores, es primo
  return true;
}

void main() {
  // Verificar todos los números del 1 al 100
  for (int i = 1; i <= 100; i++) {
    if (esPrimo(i)) {
      print('$i es un número primo.');
    } else {
      print('$i no es un número primo.');
    }
  }
}

/// OPTIMIZACIÓN POSIBLE:
/// En lugar de comprobar hasta n/2, se puede comprobar solo hasta sqrt(n)
/// porque si n tiene un divisor mayor que sqrt(n), también tiene uno menor.