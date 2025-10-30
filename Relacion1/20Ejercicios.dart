import 'dart:math';

Map<int, int> estadisticaTiempo() {
  Map<int, int> tiempo = {};
  for (int dia = 1; dia <= 30; dia++) {
    int temperatura = Random().nextInt(41) + 10; // temperatura entre 10 y 50
    tiempo[dia] = temperatura;
  }
  return tiempo;
}

void maximasYMinimas(Map<int, int> tiempo) {
  int maxTemp = tiempo.values.reduce(max);
  print(maxTemp);
  int minTemp = tiempo.values.reduce(min);
  print(minTemp);

  List<int> diasMax = tiempo.entries
      .where((entry) => entry.value == maxTemp)
      .map((entry) => entry.key)
      .toList();

  List<int> diasMin = tiempo.entries
      .where((entry) => entry.value == minTemp)
      .map((entry) => entry.key)
      .toList();

  print("Temperatura máxima: $maxTemp en los días: $diasMax");
  print("Temperatura mínima: $minTemp en los días: $diasMin");
}

void main() {
  print(estadisticaTiempo());
  maximasYMinimas(estadisticaTiempo());
}