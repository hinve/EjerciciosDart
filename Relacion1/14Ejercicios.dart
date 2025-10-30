import 'dart:math';

void lanzarDado() {
  int res = Random().nextInt(6) + 1;
  print("El valor del dado es: ${res}");
}

void main() {
  lanzarDado();
}