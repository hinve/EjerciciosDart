// Ejercicio 6
// Refactoriza el código dado para que haga uso de la clase Punto ya definida.
// El código original usaba coordenadas sueltas (x1, y1, z1, x2, y2, z2).

import 'dart:math';
import 'Ejercicio-04.dart';

class Vector {
  Punto origen;
  Punto destino;

  // Constructor
  Vector(this.origen, this.destino);

  // Método para calcular el producto escalar
  // (x2 - x1) * (otro.x2 - otro.x1) + ...
  // Esto es equivalente a multiplicar las componentes.
  double productoEscalar(Vector otroVector) {
    double dx1 = destino.x - origen.x;
    double dy1 = destino.y - origen.y;
    double dz1 = destino.z - origen.z;

    double dx2 = otroVector.destino.x - otroVector.origen.x;
    double dy2 = otroVector.destino.y - otroVector.origen.y;
    double dz2 = otroVector.destino.z - otroVector.origen.z;

    return (dx1 * dx2) + (dy1 * dy2) + (dz1 * dz2);
  }

  // Método para multiplicar un vector por un escalar
  Vector multiplicarPorEscalar(double escalar) {
    double dx = destino.x - origen.x;
    double dy = destino.y - origen.y;
    double dz = destino.z - origen.z;

    // Nuevo destino = origen + (componentes * escalar)
    Punto nuevoDestino = Punto(
      origen.x + dx * escalar,
      origen.y + dy * escalar,
      origen.z + dz * escalar
    );

    // Retornamos un nuevo vector con el mismo origen (copia para seguridad) y nuevo destino
    return Vector(
      Punto(origen.x, origen.y, origen.z),
      nuevoDestino
    );
  }

  // Método para sumar dos vectores
  Vector suma(Vector otroVector) {
    double dx1 = destino.x - origen.x;
    double dy1 = destino.y - origen.y;
    double dz1 = destino.z - origen.z;

    double dx2 = otroVector.destino.x - otroVector.origen.x;
    double dy2 = otroVector.destino.y - otroVector.origen.y;
    double dz2 = otroVector.destino.z - otroVector.origen.z;

    // Nuevo destino = origen + (comp1 + comp2)
    Punto nuevoDestino = Punto(
      origen.x + (dx1 + dx2),
      origen.y + (dy1 + dy2),
      origen.z + (dz1 + dz2)
    );

    return Vector(
      Punto(origen.x, origen.y, origen.z),
      nuevoDestino
    );
  }

  // Método para calcular el módulo del vector
  double modulo() {
    double dx = destino.x - origen.x;
    double dy = destino.y - origen.y;
    double dz = destino.z - origen.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  @override
  String toString() {
    return 'Vector($origen -> $destino)';
  }
}

void main() {
  var v1 = Vector(Punto(0, 0, 0), Punto(1, 0, 0));
  var v2 = Vector(Punto(0, 0, 0), Punto(0, 1, 0));

  print('V1: $v1');
  print('V2: $v2');
  print('Producto Escalar: ${v1.productoEscalar(v2)}'); // Debería ser 0
  print('Módulo V1: ${v1.modulo()}'); // 1
  print('Suma V1+V2: ${v1.suma(v2)}'); // (1, 1, 0)
}
