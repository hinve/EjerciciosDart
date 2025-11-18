/* 
 * Ejercicio 17: Cociente y resto mediante RECURSIÓN
 * 
 * Este programa es la versión recursiva del Ejercicio-9.
 * Calcula el cociente y el resto de una división usando restas sucesivas,
 * pero implementado con recursión en lugar de bucles iterativos.
 * 
 * Método recursivo:
 * - Caso base: si n1 < n2, hemos terminado
 * - Caso recursivo: restar n2 de n1 y llamar recursivamente
 */

/// Calcula el cociente de n1 / n2 de forma recursiva
int calcularCociente(int n1, int n2) {
  // Validación: no se puede dividir entre 0
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  // Validación: solo acepta números no negativos
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  // Caso base: si n1 es menor que n2, no se puede restar más
  // El cociente es 0
  if (n1 < n2) {
    return 0;
  }
  
  // Caso recursivo: restar n2 de n1 y sumar 1 al cociente
  // Cada resta representa una "división" exitosa
  return 1 + calcularCociente(n1 - n2, n2);
}

/// Calcula el resto de n1 / n2 de forma recursiva
int calcularResto(int n1, int n2) {
  // Validación: no se puede dividir entre 0
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  // Validación: solo acepta números no negativos
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  // Caso base: si n1 es menor que n2, lo que queda es el resto
  if (n1 < n2) {
    return n1;
  }
  
  // Caso recursivo: restar n2 de n1 y continuar
  return calcularResto(n1 - n2, n2);
}

void main() {
  // Calcular cociente y resto de 4 / 2
  int cociente = calcularCociente(4, 2);
  int resto = calcularResto(4, 2);

  print("El cociente es: ${cociente}");  // Output: 2
  print("El resto es: ${resto}");        // Output: 0
}
