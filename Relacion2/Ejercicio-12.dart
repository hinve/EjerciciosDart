import 'dart:math';

int getMinTemp(Map temperaturas) {
  int minTemp = temperaturas[0];


  int i = temperaturas.length;
  print(temperaturas);
  while(i > 0) {
    minTemp = min(minTemp, temperaturas[--i]);
  }

  return minTemp;
}

int getMaxTemp(Map temperaturas) {
  int maxTemp = temperaturas.values.first;


  int i = temperaturas.length;
  print(temperaturas);
  while(i > 0) {
    maxTemp = max(maxTemp, temperaturas.keys.last);
    temperaturas.removeWhere((key, value) => (key == temperaturas.keys.last));
  }

  return maxTemp;
}

void main () {
  Map temperaturas = {
    23: 5,
    24: 6,
    25: 6,
    26: 35
  };

  print("La temperatura maxima es: ${getMaxTemp(temperaturas)}");
  print("La temperatura minima es: ${getMinTemp(temperaturas)}");

}