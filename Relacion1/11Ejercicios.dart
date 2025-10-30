void main() {
  int n = 5;
  int resultado = 1;
  for(int i = 1; i <= n; i++) {
    resultado *= i;
  }
  print("El factorial de 5 es: ${resultado}");
}