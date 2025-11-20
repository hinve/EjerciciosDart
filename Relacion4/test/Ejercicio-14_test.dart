// Ejercicio 14: Testing para Ejercicios 4 y 5 (Punto y Vector)

import 'package:test/test.dart';
import '../src/Ejercicio-04.dart';
import '../src/Ejercicio-05.dart';

void main() {
  group('Punto', () {
    test('Constructor y toString', () {
      var p = Punto(1, 2, 3);
      expect(p.toString(), equals('(1.0, 2.0, 3.0)'));
    });

    test('Traslación', () {
      var p = Punto(0, 0, 0);
      p.trasladarX(1);
      p.trasladarY(2);
      p.trasladarZ(3);
      expect(p.x, equals(1));
      expect(p.y, equals(2));
      expect(p.z, equals(3));
    });
  });

  group('Vector', () {
    test('Constructor y componentes', () {
      var v = Vector(Punto(0, 0, 0), Punto(1, 2, 3));
      expect(v.dx, equals(1));
      expect(v.dy, equals(2));
      expect(v.dz, equals(3));
    });

    test('Multiplicar por escalar', () {
      var v = Vector(Punto(0, 0, 0), Punto(1, 1, 1));
      var v2 = v.multiplicarPorEscalar(2);
      expect(v2.dx, equals(2));
      expect(v2.dy, equals(2));
      expect(v2.dz, equals(2));
    });

    test('Suma de vectores', () {
      var v1 = Vector(Punto(0, 0, 0), Punto(1, 0, 0));
      var v2 = Vector(Punto(0, 0, 0), Punto(0, 1, 0));
      var suma = v1.sumar(v2);
      expect(suma.dx, equals(1));
      expect(suma.dy, equals(1));
      expect(suma.dz, equals(0));
    });
  });
}
