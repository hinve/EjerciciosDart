/* 
 * Ejercicio 8: Máximo Común Divisor (MCD) - Intento recursivo
 * 
 */

/// Función que intenta calcular el MCD (implementación incorrecta)
num mcd(int n1, int n2) {

  if(n1 == 1 && n2 == 1) {
    return 1;
  } else {
    return n1 % n2 / mcd(n1 - 1, n2 - 1);
  }
}

void main() {
  num res = mcd(10, 5);

  print("El resultado es: ${res}");
  // El resultado no será correcto debido a la implementación errónea
}