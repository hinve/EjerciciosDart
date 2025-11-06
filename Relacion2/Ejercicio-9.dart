int calcularCociente(int n1, int n2) {
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  int resultado = 0;
  int restante = n1;

  while (restante >= n2) {
    restante -= n2;
    resultado++;
  }

  return resultado;
}

int calcularResto(int n1, int n2) {
  if (n2 == 0) {
    throw ArgumentError("La division entre 0 es incorrecta.");
  }
  if (n1 < 0 || n2 < 0) {
    throw ArgumentError('Usa n1 >= 0 y n2 > 0 para la division.');
  }
  
  int restante = n1;

  while (restante >= n2) {
    restante -= n2;
  }

  return restante;
}

void main() {
  int cociente = calcularCociente(4, 2);
  int resto = calcularResto(4, 2);

  print("El cociente es: ${cociente}");
  print("El resto es: ${resto}");
}