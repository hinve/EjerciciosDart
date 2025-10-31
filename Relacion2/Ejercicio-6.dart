int sumarNPrimerosNumerosNaturales(int n) {
  int res = 0;

  if (n == 1){
    return 1;
  } else {
    return n + sumarNPrimerosNumerosNaturales(n - 1);
  }
}

void main() {
  int n = 5;
  
  print("La suma de los ${n} primeros numeros es: ${sumarNPrimerosNumerosNaturales(n)}");
}