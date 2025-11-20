// Ejercicio 4
// Define una clase Punto. Un punto tiene tres coordenadas espaciales (x, y, z) que lo definen.
// Además debe tener:
// ● el método constructor
// ● un método que permita la traslación en el valor de x (horizontal)
// ● otro que permita la traslación en el valor de y (vertical)
// ● otro que permita la traslación en el valor de z (cota)
// ● un método toString que lo muestre de la siguiente forma: (x, y, z)

class Punto {
  double x;
  double y;
  double z;

  // Constructor
  Punto(this.x, this.y, this.z);

  // Traslación en X
  void trasladarX(double dx) {
    x += dx;
  }

  // Traslación en Y
  void trasladarY(double dy) {
    y += dy;
  }

  // Traslación en Z
  void trasladarZ(double dz) {
    z += dz;
  }

  // toString
  @override
  String toString() {
    return '($x, $y, $z)';
  }
}

void main() {
  var p = Punto(1, 2, 3);
  print('Punto inicial: $p');
  
  p.trasladarX(5);
  print('Traslación X +5: $p');
  
  p.trasladarY(-2);
  print('Traslación Y -2: $p');
  
  p.trasladarZ(10);
  print('Traslación Z +10: $p');
}
