// Ejercicio 8
// Define una clase CuentaBancaria con:
// ● número de cuenta, nombre del titular, saldo (inicial 0), número de operaciones (inicial 0)
// ● constructor, toString, depositar, extraer, transferir

class CuentaBancaria {
  String numeroCuenta;
  String titular;
  double saldo;
  int numeroOperaciones;

  CuentaBancaria({
    required this.numeroCuenta,
    required this.titular,
    this.saldo = 0.0,
    this.numeroOperaciones = 0,
  });

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      numeroOperaciones++;
      print('Depositados $cantidad €. Nuevo saldo: $saldo €');
    } else {
      print('La cantidad a depositar debe ser positiva.');
    }
  }

  void extraer(double cantidad) {
    if (cantidad > 0) {
      // En este ejercicio no se especifica límite, asumimos que se puede quedar en negativo
      // o que es una cuenta simple. El ejercicio 9 refina esto.
      // Asumiremos comportamiento básico: se permite si hay saldo o se permite descubierto (simple).
      // Vamos a permitir descubierto por simplicidad de este enunciado genérico,
      // o restringirlo a saldo disponible. Restringiré a saldo disponible por sentido común.
      if (saldo >= cantidad) {
        saldo -= cantidad;
        numeroOperaciones++;
        print('Extraídos $cantidad €. Nuevo saldo: $saldo €');
      } else {
        print('Saldo insuficiente para extraer $cantidad €.');
      }
    } else {
      print('La cantidad a extraer debe ser positiva.');
    }
  }

  void transferir(double cantidad, CuentaBancaria destino) {
    if (cantidad > 0) {
      if (saldo >= cantidad) {
        this.extraer(cantidad); // Cuenta como operación de extracción
        destino.depositar(cantidad); // Cuenta como operación de depósito en destino
        print('Transferencia de $cantidad € realizada a ${destino.numeroCuenta}.');
      } else {
        print('Saldo insuficiente para transferir.');
      }
    }
  }

  @override
  String toString() {
    return 'Cuenta: $numeroCuenta, Titular: $titular, Saldo: $saldo €, Operaciones: $numeroOperaciones';
  }
}

void main() {
  var c1 = CuentaBancaria(numeroCuenta: 'ES001', titular: 'Juan Pérez');
  var c2 = CuentaBancaria(numeroCuenta: 'ES002', titular: 'Maria López', saldo: 100);

  print(c1);
  c1.depositar(500);
  c1.extraer(200);
  c1.transferir(100, c2);
  
  print(c1);
  print(c2);
}
