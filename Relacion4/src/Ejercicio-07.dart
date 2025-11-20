// Ejercicio 7
// Dado el programa con Figura, Cuadrado, Circulo:
// Añade Triangulo (lado1, lado2, lado3).
// Añade get perimetro abstracto a Figura e impleméntalo.
// Añade printValores() a Figura (imprime area y perimetro).
// Crea una lista de Figuras y llama a printValores().

import 'dart:math';

abstract class Figura {
  double get area;
  double get perimetro;

  void printValores() {
    print('--- ${this.runtimeType} ---');
    print('Área: ${area.toStringAsFixed(2)}');
    print('Perímetro: ${perimetro.toStringAsFixed(2)}');
  }
}

class Cuadrado extends Figura {
  Cuadrado(this.lado);
  final double lado;

  @override
  double get area => lado * lado;

  @override
  double get perimetro => 4 * lado;
}

class Circulo extends Figura {
  Circulo(this.radio);
  final double radio;

  @override
  double get area => pi * radio * radio;

  @override
  double get perimetro => 2 * pi * radio;
}

class Triangulo extends Figura {
  Triangulo(this.lado1, this.lado2, this.lado3);
  final double lado1;
  final double lado2;
  final double lado3;

  @override
  double get perimetro => lado1 + lado2 + lado3;

  @override
  double get area {
    // Fórmula de Herón
    double s = perimetro / 2;
    return sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
  }
}

void main() {
  List<Figura> figuras = [
    Cuadrado(5),
    Circulo(3),
    Triangulo(3, 4, 5), // Triángulo rectángulo 3-4-5, área 6
  ];

  for (var figura in figuras) {
    figura.printValores();
  }
}
