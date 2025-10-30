import 'dart:math';

void lanzarDadoNVeces(int n) {
  // Inicializar contadores
  int res = 0;
  int n1 = 0;
  int n2 = 0;
  int n3 = 0;
  int n4 = 0;
  int n5 = 0;
  int n6 = 0;

  while (n > 0) {
    // Para trucar el dado pongo un numero mayor de 6 y luego lo limito a 6
    res = Random().nextInt(9);
    if (res > 6) {
      res = 6;
    }
    switch (res) {
      case 1:
        n1++;
        break;
      case 2:
        n2++;
        break;
      case 3:
        n3++;
        break;
      case 4:
        n4++;
        break;
      case 5:
        n5++;
        break;
      case 6:
        n6++;
        break;
      default:
        break;
    }
    n--;
  }
  // Mostrar resultados
  print("Numero de lanzamientos: ${n1 + n2 + n3 + n4 + n5 + n6}");
  print("Resultados de lanzar el dado:");
  print("Número de 1s: ${n1}");
  print("Número de 2s: ${n2}");
  print("Número de 3s: ${n3}");
  print("Número de 4s: ${n4}");
  print("Número de 5s: ${n5}");
  print("Número de 6s: ${n6}");
}

void main() {
  // Lanzar el dado 1000 veces
  lanzarDadoNVeces(1000);
}