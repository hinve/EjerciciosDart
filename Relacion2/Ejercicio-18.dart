
List<int> calcularFibonacci(int n) {
  List<int> fibonacci = [];
  for (int i = 0; i < n; i++) {
    if (i == 0) {
      fibonacci.add(0);
    } else if (i == 1) {
      fibonacci.add(1);
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }
  return fibonacci;
}

void main() {
  int n = 5;
  List<int> numeros = calcularFibonacci(n);

  print("Los primeros ${n} números de la secuencia de Fibonacci son: ${numeros}");
}