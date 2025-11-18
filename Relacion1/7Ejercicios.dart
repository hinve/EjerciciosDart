/* 
 * Ejercicio 7: Resolver ecuación cuadrática
 * 
 * Este programa resuelve ecuaciones de segundo grado de la forma: ax² + bx + c = 0
 * Utiliza la fórmula cuadrática: x = (-b ± √(b² - 4ac)) / 2a
 * 
 * El discriminante (b² - 4ac) determina el tipo de soluciones:
 * - Discriminante < 0: No hay raíces reales (números complejos)
 * - Discriminante = 0: Una raíz real (raíz doble)
 * - Discriminante > 0: Dos raíces reales distintas
 */

import 'dart:io';    // Para entrada/salida
import 'dart:math';  // Para la función sqrt() (raíz cuadrada)

void main() {
  // Solicitar los tres coeficientes de la ecuación cuadrática
  print("Ingrese 3 numeros");
  
  print("Numero 1:");  // Coeficiente 'a' (término cuadrático)
  double a = double.parse(stdin.readLineSync()!);
  
  print("Numero 2:");  // Coeficiente 'b' (término lineal)
  double b = double.parse(stdin.readLineSync()!);
  
  print("Numero 3:");  // Coeficiente 'c' (término independiente)
  double c = double.parse(stdin.readLineSync()!);
  
  // Fórmula de la ecuación cuadrática: ax² + bx + c = 0
  
  // Calcular el discriminante (determina el tipo de raíces)
  double resRaiz = b * b - 4 * a * c;

  // Mostrar la ecuación formateada
  print("Ecuacion: ${a}x^2 + ${b}x + ${c}");
  
  // Validar que 'a' no sea 0 (si a=0, no es ecuación cuadrática)
  if(a == 0) {
    print("El primer numero no puede ser 0, NO es una ecuacion cuadratica.");
  } 
  // Si el discriminante es negativo, no hay raíces reales
  else if (resRaiz < 0) {
    print("No se puede hacer.");
  } 
  // Si el discriminante es 0, hay una sola raíz real (raíz doble)
  else if (resRaiz == 0) {
    print("Solo tiene una raiz real: ${-b / (2 * a)}");
  } 
  // Si el discriminante es positivo, hay dos raíces reales distintas
  else {
    // ⚠️ ERROR: Faltan paréntesis en la fórmula
    // Debería ser: (-b + sqrt(resRaiz)) / (2 * a)
    double raiz1 = (-b + sqrt(resRaiz) / (2 * a));
    double raiz2 = (-b - sqrt(resRaiz) / (2 * a));

    print("Los resultados son: ${raiz1} y ${raiz2}");
  }
}