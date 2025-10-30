import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese 3 numeros");
  print("Numero 1:");
  double a = double.parse(stdin.readLineSync()!);
  print("Numero 2:");
  double b = double.parse(stdin.readLineSync()!);
  print("Numero 3:");
  double c = double.parse(stdin.readLineSync()!);
  
  // ax^2 + bx + c = 0
  
  double resRaiz = b * b - 4 * a * c;

  print("Ecuacion: ${a}x^2 + ${b}x + ${c}");
  if(a == 0) {
    print("El primer numero no puede ser 0, NO es una ecuacion cuadratica.");
  } else if (resRaiz < 0) {
    print("No se puede hacer.");
  } else if (resRaiz == 0) {
    print("Solo tiene una raiz real: ${-b / (2 * a)}");
  } else {
    double raiz1 = (-b + sqrt(resRaiz) / (2 * a));
    double raiz2 = (-b - sqrt(resRaiz) / (2 * a));

    print("Los resultados son: ${raiz1} y ${raiz2}");
  }
}