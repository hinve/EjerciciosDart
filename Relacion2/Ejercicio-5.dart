import 'dart:core';

DateTime mostrarFechaYHora(int horas) {
  DateTime ahora = DateTime.now();
  DateTime nuevaHora = ahora.add(Duration(hours: horas));
  return nuevaHora;
}

void main() {
  DateTime fechaCambiada = mostrarFechaYHora(-5);

  print("La fecha modificada es: ${fechaCambiada}");
}