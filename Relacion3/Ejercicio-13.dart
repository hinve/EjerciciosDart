/*
Ejercicio 13: Gestión de una lista de colores con menú.
Funciones usadas de List:
- isEmpty: comprobar si la lista está vacía
- add: añadir un elemento
- addAll: (no usada en menú, ejemplo incluido)
- length: número de elementos
- removeAt: eliminar por índice
- clear: vaciar lista (opcional)
- indexOf: buscar posición de un elemento
- sort: ordenar (opcional) 

Comportamiento con duplicados:
- Por defecto una List permite duplicados: ['rojo','rojo'] es válido.
- Si se considera erróneo, se puede evitar comprobando si ya existe antes de agregar.

Se añade opción de impedir duplicados (toggle).
*/

import 'dart:io';

void main() {
  final List<String> colores = ['rojo', 'verde', 'azul'];
  bool evitarDuplicados = true; // cambiar a false si se permiten repetidos

  while (true) {
    print('\n== Menú Colores ==');
    print('1. Incluir color');
    print('2. Eliminar color (por índice)');
    print('3. Buscar color');
    print('4. Mostrar lista de colores');
    print('5. Salir');
    stdout.write('Opción: ');
    final op = stdin.readLineSync()?.trim();

    switch (op) {
      case '1':
        stdout.write('Color a incluir: ');
        final nuevo = stdin.readLineSync()?.trim().toLowerCase();
        if (nuevo == null || nuevo.isEmpty) {
          print('Entrada vacía.');
          break;
        }
        if (evitarDuplicados && colores.contains(nuevo)) {
          print('Ya existe "$nuevo". No se añade (duplicados evitados).');
        } else {
          colores.add(nuevo);
          print('Añadido: $nuevo');
        }
        break;

      case '2':
        if (colores.isEmpty) {
          print('Lista vacía.');
          break;
        }
        stdout.write('Índice a eliminar (0..${colores.length - 1}): ');
        final txt = stdin.readLineSync();
        final idx = int.tryParse(txt ?? '');
        if (idx == null || idx < 0 || idx >= colores.length) {
          print('Índice inválido.');
          break;
        }
        final eliminado = colores.removeAt(idx);
        print('Eliminado: $eliminado');
        break;

      case '3':
        stdout.write('Color a buscar: ');
        final buscado = stdin.readLineSync()?.trim().toLowerCase();
        if (buscado == null || buscado.isEmpty) {
          print('Entrada vacía.');
          break;
        }
        final pos = colores.indexOf(buscado);
        if (pos == -1) {
          print('"$buscado" no está en la lista.');
        } else {
          print('"$buscado" encontrado en índice $pos.');
        }
        break;

      case '4':
        if (colores.isEmpty) {
          print('Lista vacía.');
        } else {
          // Ejemplo adicional: ordenar antes de mostrar (comentado)
          // colores.sort();
          print('Colores: $colores');
        }
        break;

      case '5':
        print('Fin.');
        return;

      default:
        print('Opción inválida.');
    }
  }
}