// Ejercicio 15: Testing para Ejercicio 9 (Cuentas Bancarias)

import 'package:test/test.dart';
import '../src/Ejercicio-09.dart';

void main() {
  group('CuentaDebito', () {
    test('No permite descubierto', () {
      var c = CuentaDebito(numeroCuenta: 'D1', titular: 'Test', saldo: 100);
      c.extraer(150);
      expect(c.saldo, equals(100)); // No debe cambiar
    });

    test('Permite extracción con saldo', () {
      var c = CuentaDebito(numeroCuenta: 'D2', titular: 'Test', saldo: 100);
      c.extraer(50);
      expect(c.saldo, equals(50));
    });
  });

  group('CuentaCredito', () {
    test('Permite descubierto hasta límite', () {
      var c = CuentaCredito(numeroCuenta: 'C1', titular: 'Test', saldo: 0, limiteDescubierto: 100);
      c.extraer(50);
      expect(c.saldo, equals(-50));
    });

    test('No permite exceder límite descubierto', () {
      var c = CuentaCredito(numeroCuenta: 'C2', titular: 'Test', saldo: 0, limiteDescubierto: 100);
      c.extraer(150);
      expect(c.saldo, equals(0)); // No debe cambiar
    });
  });
}
