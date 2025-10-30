/* 2- Busca en la documentaciön oficial de Dart cuales son los tipos de datos Built-in y
experimenta con ellos.
Declara e inicializa una variable de cada uno de estos tipos: int, double, String, bool,
dynamic.
Afiade tipos més complejos como List, Map, Set, record al repaso anterior
Investiga qué operadores se pueden utilizar con cada uno de ellos y cömo se comporta la
funciön print, asi como las opciones de parseo */

void main() {
  int num1 = 1;
  print(num1);

  double num2 = 1.0;
  print(num2);

  String nombre = "Naiara";
  print(nombre);

  bool trueFalse = true;
  print(trueFalse);

  dynamic dinamico = 20;
  print(dinamico);

  List lista = new List.empty();
  print(lista);

  Map diccionario = new Map();
  print(diccionario);

  Set unorderedColeccion = new Set();
  print(unorderedColeccion);

  Runes caracter = new Runes("Hola");
  print(caracter);
}