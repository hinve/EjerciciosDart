void main() {
  int num1 = 10;
  int num2 = 3;

  while (num2 != 0) {
    int res = num1 % num2;
    num1 = num2;
    num2 = res;
  }
  print("El máximo común divisor es: ${num1}");
}
