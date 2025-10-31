
int calcularFactorial(int n) {
  if(n == 1) {
    return 1;
  } else {
    return n * calcularFactorial(n - 1);
  }
}

void main () {
  int n = 5;

  int resultado = calcularFactorial(n);

  print("El factorial de ${n} es: ${resultado}");
}