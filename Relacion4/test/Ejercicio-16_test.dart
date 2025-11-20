// Ejercicio 16: Testing para Ejercicio 11 (Fracción)

import 'package:test/test.dart';
import '../src/Ejercicio-11.dart';

void main() {
  group('Fraccion', () {
    test('Simplificación automática', () {
      var f = Fraccion(2, 4);
      expect(f.numerador, equals(1));
      expect(f.denominador, equals(2));
    });

    test('Suma', () {
      var f1 = Fraccion(1, 2);
      var f2 = Fraccion(1, 2);
      var suma = f1.sumar(f2);
      expect(suma.numerador, equals(1));
      expect(suma.denominador, equals(1)); // 1/1 = 1
    });

    test('Resta', () {
      var f1 = Fraccion(3, 4);
      var f2 = Fraccion(1, 4);
      var resta = f1.restar(f2);
      expect(resta.numerador, equals(1));
      expect(resta.denominador, equals(2)); // 2/4 -> 1/2
    });

    test('Multiplicación', () {
      var f1 = Fraccion(1, 2);
      var f2 = Fraccion(2, 3);
      var mult = f1.multiplicar(f2);
      expect(mult.numerador, equals(1));
      expect(mult.denominador, equals(3)); // 2/6 -> 1/3
    });

    test('División', () {
      var f1 = Fraccion(1, 2);
      var f2 = Fraccion(1, 2);
      var div = f1.dividir(f2);
      expect(div.numerador, equals(1));
      expect(div.denominador, equals(1));
    });
  });
}
