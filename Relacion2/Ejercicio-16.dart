/* 
 * Ejercicio 16: Máximo Común Divisor (MCD) - Intento recursivo
 * 
 * Este ejercicio es idéntico al Ejercicio-8.
 * 
 * Ver Ejercicio-8 para detalles de los errores.
 */

/// Intento de calcular el MCD (implementación incorrecta)
num mcd(int n1, int n2) {

  // Caso base incorrecto
  if(n1 == 1 && n2 == 1) {
    return 1;
  } else {
    // Fórmula incorrecta que no implementa el algoritmo de Euclides
    return n1 % n2 / mcd(n1 - 1, n2 - 1);
  }
}

void main() {
  num res = mcd(10, 5);

  print("El resultado es: ${res}");
}