void main() {
  int n1 = 10;
  int n2 = 4;

  int cociente = 0;
  int resto = n1;

  while (resto >= n2) {
    resto -= n2;
    cociente++;
  }
  print("El cociente es: ${cociente} y el resto es: ${resto}");
}
