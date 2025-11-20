// Ejercicio 9
// Reestructura el ejercicio y define la clase CuentaBancaria como abstracta e instancia dos
// clases hijas CuentaDebito y CuentaCredito.
// Crédito: límite máximo para saldo negativo.
// Débito: no se puede extraer si no hay saldo suficiente.

abstract class CuentaBancaria {
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
      print('[$numeroCuenta] Depositados $cantidad €. Nuevo saldo: $saldo €');
    }
  }

  // Método abstracto o con implementación base que se sobrescribe
  void extraer(double cantidad);

  void transferir(double cantidad, CuentaBancaria destino) {
    // Para transferir, intentamos extraer. Si la extracción tiene éxito (no lanza excepción o devuelve true),
    // entonces depositamos.
    // Modificaremos extraer para que lance excepción o manejaremos la lógica aquí.
    // Mejor: verificamos si se puede extraer antes. Pero la lógica de "poder extraer" depende de la subclase.
    // Una forma limpia: intentar extraer y si falla, no depositar.
    // Pero extraer ya modifica el saldo.
    // Vamos a definir un método auxiliar 'puedeExtraer' o simplemente llamar a extraer y capturar error si lanzara,
    // o hacer que extraer devuelva bool.
    
    if (puedeExtraer(cantidad)) {
      extraer(cantidad);
      destino.depositar(cantidad);
      print('[$numeroCuenta] Transferencia de $cantidad € a ${destino.numeroCuenta} realizada.');
    } else {
      print('[$numeroCuenta] No se pudo realizar la transferencia de $cantidad €.');
    }
  }

  bool puedeExtraer(double cantidad);

  @override
  String toString() {
    return '$runtimeType - Cuenta: $numeroCuenta, Titular: $titular, Saldo: $saldo €';
  }
}

class CuentaDebito extends CuentaBancaria {
  CuentaDebito({required super.numeroCuenta, required super.titular, super.saldo});

  @override
  bool puedeExtraer(double cantidad) {
    return saldo >= cantidad;
  }

  @override
  void extraer(double cantidad) {
    if (puedeExtraer(cantidad)) {
      saldo -= cantidad;
      numeroOperaciones++;
      print('[$numeroCuenta] Extraídos $cantidad €. Nuevo saldo: $saldo €');
    } else {
      print('[$numeroCuenta] Saldo insuficiente (Débito).');
    }
  }
}

class CuentaCredito extends CuentaBancaria {
  double limiteDescubierto; // Cantidad positiva que representa hasta cuánto puede bajar de 0 (ej: 1000)

  CuentaCredito({
    required super.numeroCuenta,
    required super.titular,
    super.saldo,
    this.limiteDescubierto = 500.0,
  });

  @override
  bool puedeExtraer(double cantidad) {
    // Saldo - cantidad debe ser mayor o igual a -limiteDescubierto
    return (saldo - cantidad) >= -limiteDescubierto;
  }

  @override
  void extraer(double cantidad) {
    if (puedeExtraer(cantidad)) {
      saldo -= cantidad;
      numeroOperaciones++;
      print('[$numeroCuenta] Extraídos $cantidad €. Nuevo saldo: $saldo €');
    } else {
      print('[$numeroCuenta] Límite de crédito excedido.');
    }
  }
}

void main() {
  var debito = CuentaDebito(numeroCuenta: 'DEB001', titular: 'Ana', saldo: 100);
  var credito = CuentaCredito(numeroCuenta: 'CRE001', titular: 'Beto', saldo: 50, limiteDescubierto: 200);

  print('--- Pruebas Débito ---');
  debito.extraer(50); // OK
  debito.extraer(100); // Fallo, quedan 50

  print('\n--- Pruebas Crédito ---');
  credito.extraer(100); // OK, saldo -50
  credito.extraer(200); // OK, saldo -250 (límite -200? No, límite es 200, o sea hasta -200)
  // Saldo inicial 50. Extrae 100 -> -50.
  // Extrae 200 -> -250. Límite es 200 (hasta -200). Debería fallar.
  
  // Reiniciamos para probar bien
  credito.saldo = 50;
  credito.extraer(100); // Saldo -50. OK.
  credito.extraer(100); // Saldo -150. OK.
  credito.extraer(100); // Saldo -250. Fallo (límite -200).
}
