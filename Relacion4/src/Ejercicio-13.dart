// Ejercicio 13
// Crea un mixin en Dart llamado Comparable<T> . A partir de un tipo T, deberá crear una
// interfaz que incluya los métodos anteriores. ¿Podría usarse en el caso anterior?

// Nota: Dart ya tiene una interfaz Comparable<T> en el core, pero solo obliga a implementar compareTo.
// Aquí crearemos un mixin que, dado un compareTo (o similar), provea los operadores booleanos.

import 'Ejercicio-11.dart';

mixin MiComparable<T> {
  // El mixin requiere que la clase que lo use implemente este método
  // Retorna negativo si this < other, 0 si igual, positivo si this > other
  int comparar(T otro);

  bool esMayorQue(T otro) => comparar(otro) > 0;
  bool esMenorQue(T otro) => comparar(otro) < 0;
  bool esIgualA(T otro) => comparar(otro) == 0;
  bool esMayorOIgualQue(T otro) => comparar(otro) >= 0;
  bool esMenorOIgualQue(T otro) => comparar(otro) <= 0;
  bool esDistintoQue(T otro) => comparar(otro) != 0;
}

// ¿Podría usarse en el caso anterior?
// Sí. Podríamos redefinir FraccionComparable (o Fraccion) para usar este mixin.

class FraccionConMixin extends Fraccion with MiComparable<FraccionConMixin> {
  FraccionConMixin(int n, int d) : super(n, d);

  @override
  int comparar(FraccionConMixin otro) {
    int val1 = numerador * otro.denominador;
    int val2 = otro.numerador * denominador;
    return val1 - val2;
  }
}

void main() {
  var f1 = FraccionConMixin(1, 2);
  var f2 = FraccionConMixin(3, 4);

  print('Usando Mixin:');
  print('1/2 < 3/4? ${f1.esMenorQue(f2)}');
}
