// Ejercicio 5
// Define una clase Vector utilizando para ello la clase Punto:
// ● un vector queda definido por dos puntos: inicio y fin
// ● debe poder trasladarse en vertical, horizontal y en la cota (trasladando cada uno de sus puntos)
// ● debe poder calcularse el producto de un escalar por un vector
// ● debe poderse sumar con otro vector
// ● debe poderse calcular el producto vectorial (solo si tienes formación matemática)

import 'Ejercicio-04.dart';

class Vector {
  Punto inicio;
  Punto fin;

  // Constructor
  Vector(this.inicio, this.fin);

  // Traslación
  void trasladarX(double dx) {
    inicio.trasladarX(dx);
    fin.trasladarX(dx);
  }

  void trasladarY(double dy) {
    inicio.trasladarY(dy);
    fin.trasladarY(dy);
  }

  void trasladarZ(double dz) {
    inicio.trasladarZ(dz);
    fin.trasladarZ(dz);
  }

  // Componentes del vector (fin - inicio)
  double get dx => fin.x - inicio.x;
  double get dy => fin.y - inicio.y;
  double get dz => fin.z - inicio.z;

  // Producto por un escalar
  // Multiplicar un vector por un escalar k escala su magnitud.
  // Mantenemos el punto de inicio y movemos el punto final.
  Vector multiplicarPorEscalar(double k) {
    // Nuevas componentes
    double ndx = dx * k;
    double ndy = dy * k;
    double ndz = dz * k;

    // Nuevo punto fin
    Punto nuevoFin = Punto(inicio.x + ndx, inicio.y + ndy, inicio.z + ndz);
    return Vector(
      Punto(inicio.x, inicio.y, inicio.z), // Copia del inicio
      nuevoFin
    );
  }

  // Sumar con otro vector
  Vector sumar(Vector otro) {
    double sumaDx = dx + otro.dx;
    double sumaDy = dy + otro.dy;
    double sumaDz = dz + otro.dz;

    Punto nuevoFin = Punto(inicio.x + sumaDx, inicio.y + sumaDy, inicio.z + sumaDz);
    return Vector(
      Punto(inicio.x, inicio.y, inicio.z),
      nuevoFin
    );
  }

  // Producto vectorial (Cross Product)
  // u x v = (uy*vz - uz*vy, uz*vx - ux*vz, ux*vy - uy*vx)
  Vector productoVectorial(Vector otro) {
    double cx = dy * otro.dz - dz * otro.dy;
    double cy = dz * otro.dx - dx * otro.dz;
    double cz = dx * otro.dy - dy * otro.dx;

    Punto nuevoFin = Punto(inicio.x + cx, inicio.y + cy, inicio.z + cz);
    return Vector(
      Punto(inicio.x, inicio.y, inicio.z),
      nuevoFin
    );
  }

  @override
  String toString() {
    return 'Vector[Inicio$inicio -> Fin$fin] (Componentes: $dx, $dy, $dz)';
  }
}

void main() {
  var p1 = Punto(0, 0, 0);
  var p2 = Punto(1, 1, 0);
  var v1 = Vector(p1, p2);

  print('Vector 1: $v1');

  v1.trasladarX(1);
  print('Vector 1 trasladado X+1: $v1');

  var v2 = v1.multiplicarPorEscalar(2);
  print('Vector 1 * 2: $v2');

  var p3 = Punto(0, 0, 0);
  var p4 = Punto(0, 1, 0);
  var v3 = Vector(p3, p4); // Vector (0, 1, 0)
  
  // v1 actual es (1,1,0) -> (2,2,0) componentes (1,1,0)
  // v3 es (0,0,0) -> (0,1,0) componentes (0,1,0)
  // Suma: (1, 2, 0)
  var vSuma = v1.sumar(v3);
  print('Suma v1 + v3: $vSuma');
}
