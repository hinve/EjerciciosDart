// Ejercicio 10
// Factorizar el código para que no sea necesaria la jerarquía de clases.
// Discute pros y contras.

// Solución: Usar una sola clase con un tipo o flag, y una propiedad de límite (que sería 0 para débito).

enum TipoCuenta { debito, credito }

class CuentaBancariaUnificada {
  String numeroCuenta;
  String titular;
  double saldo;
  int numeroOperaciones;
  TipoCuenta tipo;
  double limiteDescubierto; // Para débito será 0.

  CuentaBancariaUnificada({
    required this.numeroCuenta,
    required this.titular,
    this.saldo = 0.0,
    this.numeroOperaciones = 0,
    required this.tipo,
    this.limiteDescubierto = 0.0,
  }) {
    if (tipo == TipoCuenta.debito) {
      limiteDescubierto = 0.0; // Forzamos 0 si es débito
    }
  }

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      numeroOperaciones++;
    }
  }

  void extraer(double cantidad) {
    if (cantidad <= 0) return;

    // Lógica unificada: el límite inferior es -limiteDescubierto
    // Para débito, limiteDescubierto es 0, así que saldo >= cantidad (saldo - cantidad >= 0)
    if (saldo - cantidad >= -limiteDescubierto) {
      saldo -= cantidad;
      numeroOperaciones++;
      print('Extraídos $cantidad. Saldo: $saldo');
    } else {
      print('Operación denegada. Límite excedido.');
    }
  }

  // ... resto de métodos (transferir, toString) ...
}

// DISCUSIÓN (Pros y Contras):
//
// Pros:
// - Menos clases, estructura más simple si la lógica es muy similar.
// - Fácil de cambiar el tipo de cuenta en tiempo de ejecución (convertir débito a crédito).
//
// Contras:
// - Lógica condicional (if/switch) o dependencia de atributos que pueden no tener sentido para todos los tipos.
// - Menor extensibilidad: si añadimos "CuentaAhorro" con reglas muy distintas, la clase se llena de "if".
// - Violación del Principio de Responsabilidad Única si la clase crece demasiado gestionando reglas de todos los tipos.
// - Polimorfismo es más limpio para comportamientos diferentes.

void main() {
  var c = CuentaBancariaUnificada(
    numeroCuenta: 'U001', 
    titular: 'Test', 
    tipo: TipoCuenta.credito, 
    limiteDescubierto: 500
  );
  c.extraer(100);
}
