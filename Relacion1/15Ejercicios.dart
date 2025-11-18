/* 
 * Ejercicio 15: Estadísticas de lanzamiento de dado
 * 
 * Este programa simula el lanzamiento de un dado N veces y cuenta
 * cuántas veces sale cada número (del 1 al 6).
 * 
 * NOTA: Este código tiene un dado "trucado" que favorece el número 6
 * (genera números del 0 al 8 y convierte 7 y 8 en 6)
 */

import 'dart:math';  // Para Random()

/// Función que lanza un dado N veces y muestra estadísticas
void lanzarDadoNVeces(int n) {
  // Inicializar contadores para cada cara del dado
  int res = 0;   // Resultado de cada lanzamiento
  int n1 = 0;    // Contador de veces que salió 1
  int n2 = 0;    // Contador de veces que salió 2
  int n3 = 0;    // Contador de veces que salió 3
  int n4 = 0;    // Contador de veces que salió 4
  int n5 = 0;    // Contador de veces que salió 5
  int n6 = 0;    // Contador de veces que salió 6

  // Bucle para lanzar el dado N veces
  while (n > 0) {
    // DADO TRUCADO: genera números de 0 a 8
    // Esto hace que el 6 salga más frecuentemente
    res = Random().nextInt(9);
    
    // Convertir valores mayores a 6 en 6
    if (res > 6) {
      res = 6;
    }
    
    // Incrementar el contador correspondiente según el resultado
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
        break;  // Caso 0, se ignora
    }
    n--;  // Decrementar el contador de lanzamientos restantes
  }
  
  // Mostrar los resultados estadísticos
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
  // Lanzar el dado 1000 veces y mostrar estadísticas
  lanzarDadoNVeces(1000);
}