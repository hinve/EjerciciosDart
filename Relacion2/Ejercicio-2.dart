import 'dart:core';

void mostrarFechaYHora(int horas) {
  DateTime ahora = DateTime.now();
  DateTime nuevaHora = ahora.add(Duration(hours: horas));
  print('Fecha y hora actual más $horas horas: $nuevaHora');
}

void main() {
  mostrarFechaYHora(-5);
}