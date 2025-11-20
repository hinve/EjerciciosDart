// Ejercicio 12
// Revisita la clase Fracción y crea una clase derivada FraccionComparable que incluya
// los métodos booleanos de comparación.

import 'Ejercicio-11.dart';

class FraccionComparable extends Fraccion {
  FraccionComparable(int numerador, int denominador) : super(numerador, denominador);

  // Para comparar, podemos usar el valor decimal o producto cruzado.
  // a/b > c/d  <=> a*d > c*b (si denominadores positivos)
  
  bool esMayorQue(FraccionComparable otra) {
    return numerador * otra.denominador > otra.numerador * denominador;
  }

  bool esMenorQue(FraccionComparable otra) {
    return numerador * otra.denominador < otra.numerador * denominador;
  }

  bool esIgualA(FraccionComparable otra) {
    return numerador * otra.denominador == otra.numerador * denominador;
  }

  bool esMayorOIgualQue(FraccionComparable otra) {
    return esMayorQue(otra) || esIgualA(otra);
  }

  bool esMenorOIgualQue(FraccionComparable otra) {
    return esMenorQue(otra) || esIgualA(otra);
  }

  bool esDistintoQue(FraccionComparable otra) {
    return !esIgualA(otra);
  }
}

void main() {
  var f1 = FraccionComparable(1, 2);
  var f2 = FraccionComparable(2, 4); // Igual a 1/2
  var f3 = FraccionComparable(3, 4);

  print('1/2 == 2/4? ${f1.esIgualA(f2)}');
  print('1/2 < 3/4? ${f1.esMenorQue(f3)}');
}
