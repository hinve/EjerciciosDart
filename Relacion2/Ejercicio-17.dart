int calcularCociente(int n1, int n2) {
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  // Caso base: si n1 es menor que n2, el cociente es 0
  if (n1 < n2) {
    return 0;
  }
  
  // Caso recursivo: resta n2 de n1 y suma 1 al cociente
  return 1 + calcularCociente(n1 - n2, n2);
}

int calcularResto(int n1, int n2) {
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  // Caso base: si n1 es menor que n2, el resto es n1
  if (n1 < n2) {
    return n1;
  }
  
  // Caso recursivo: resta n2 de n1 y continúa
  return calcularResto(n1 - n2, n2);
}

void main() {
  int cociente = calcularCociente(4, 2);
  int resto = calcularResto(4, 2);

  print("El cociente es: ${cociente}");
  print("El resto es: ${resto}");
}
