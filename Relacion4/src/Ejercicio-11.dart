// Ejercicio 11
// Define la clase fracción en Dart con los atributos numerador y denominador.
// Métodos: constructor, sumar, restar, multiplicar, dividir, simplificar, mcd, toString.

class Fraccion {
  int numerador;
  int denominador;

  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw ArgumentError('El denominador no puede ser 0');
    }
    simplificar(); // Simplificamos al crear para mantener estado consistente
  }

  // Máximo Común Divisor
  int mcd(int a, int b) {
    return b == 0 ? a : mcd(b, a % b);
  }

  void simplificar() {
    int divisor = mcd(numerador.abs(), denominador.abs());
    numerador ~/= divisor;
    denominador ~/= divisor;
    // Manejo de signos: denominador siempre positivo
    if (denominador < 0) {
      numerador = -numerador;
      denominador = -denominador;
    }
  }

  Fraccion sumar(Fraccion otra) {
    int nuevoNum = numerador * otra.denominador + otra.numerador * denominador;
    int nuevoDen = denominador * otra.denominador;
    return Fraccion(nuevoNum, nuevoDen);
  }

  Fraccion restar(Fraccion otra) {
    int nuevoNum = numerador * otra.denominador - otra.numerador * denominador;
    int nuevoDen = denominador * otra.denominador;
    return Fraccion(nuevoNum, nuevoDen);
  }

  Fraccion multiplicar(Fraccion otra) {
    return Fraccion(numerador * otra.numerador, denominador * otra.denominador);
  }

  Fraccion dividir(Fraccion otra) {
    if (otra.numerador == 0) throw ArgumentError('No se puede dividir por 0');
    return Fraccion(numerador * otra.denominador, denominador * otra.numerador);
  }

  double toDouble() => numerador / denominador;

  @override
  String toString() {
    if (denominador == 1) return '$numerador';
    return '$numerador/$denominador';
  }
}

void main() {
  var f1 = Fraccion(1, 2);
  var f2 = Fraccion(3, 4);
  
  print('$f1 + $f2 = ${f1.sumar(f2)}');
  print('$f1 * $f2 = ${f1.multiplicar(f2)}');
}
