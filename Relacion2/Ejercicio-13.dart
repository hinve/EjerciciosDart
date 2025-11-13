bool esPrimo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  for (int i = 1; i <= 100; i++) {
    if (esPrimo(i)) {
      print('$i es un número primo.');
    } else {
      print('$i no es un número primo.');
    }
  }
}