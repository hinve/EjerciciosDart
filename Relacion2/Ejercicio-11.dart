import 'dart:math';

int getMinTemp(List temperaturas) {
  int minTemp = temperaturas[0];


  int i = temperaturas.length;
  print(temperaturas);
  while(i > 0) {
    minTemp = min(minTemp, temperaturas[--i]);
  }

  return minTemp;
}

int getMaxTemp(List temperaturas) {
  int maxTemp = temperaturas[0];


  int i = temperaturas.length;
  print(temperaturas);
  while(i > 0) {
    maxTemp = max(maxTemp, temperaturas[--i]);
  }

  return maxTemp;
}

void main () {
  List temperaturas = [5, 5, 5, 5, 7];

  print("La temperatura maxima es: ${getMaxTemp(temperaturas)}");
  print("La temperatura minima es: ${getMinTemp(temperaturas)}");

}

/// Pregunta: estas funciones devuelven un valor numérico que queda descontextualizado en el 
/// caso de la máxima y la mínima, perdiendo el dato de en qué día se produjeron. ¿Cómo lo 
/// solucionarías? Hay varias opciones
/// Una muy buena forma seria mandar un diccionario de un solo valor con la clave
/// que seria la temperatura y el valor que seria el dia.