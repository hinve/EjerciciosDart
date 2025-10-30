import 'dart:io';

void main() {
  print("Ingrese un numero para ver su tabla de multiplicar:");
  int? num;
  try {
    num = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Error: Por favor, ingrese un numero valido.");
    return;
  }

  for(int i = 1; i <= 10; i++) {
    print("${num} * ${i} = ${num * i}");
  }
}