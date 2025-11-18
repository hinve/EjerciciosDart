/* 
 * Ejercicio 2: Tipos de datos Built-in de Dart
 * 
 * Este programa explora los tipos de datos básicos y complejos que vienen
 * integrados en Dart, demostrando su declaración, inicialización y uso con print().
 */

void main() {
  // Tipos de datos básicos (primitivos)
  
  // int: números enteros (sin decimales)
  int num1 = 1;
  print(num1);  // Output: 1

  // double: números con decimales (punto flotante)
  double num2 = 1.0;
  print(num2);  // Output: 1.0

  // String: cadenas de texto
  String nombre = "Naiara";
  print(nombre);  // Output: Naiara

  // bool: valores booleanos (true o false)
  bool trueFalse = true;
  print(trueFalse);  // Output: true

  // dynamic: tipo dinámico que puede contener cualquier valor
  // Se puede cambiar de tipo en tiempo de ejecución
  dynamic dinamico = 20;
  print(dinamico);  // Output: 20

  // Tipos de datos complejos (colecciones)
  
  // List: lista ordenada de elementos (equivalente a array)
  List lista = new List.empty();
  print(lista);  // Output: []

  // Map: colección de pares clave-valor (equivalente a diccionario)
  Map diccionario = new Map();
  print(diccionario);  // Output: {}

  // Set: colección sin elementos duplicados y sin orden específico
  Set unorderedColeccion = new Set();
  print(unorderedColeccion);  // Output: {}

  // Runes: secuencia de puntos de código Unicode (para caracteres especiales)
  Runes caracter = new Runes("Hola");
  print(caracter);  // Output: (72, 111, 108, 97) - códigos Unicode de cada letra
}