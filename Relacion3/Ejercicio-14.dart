// filepath: c:\Users\dam2\Desktop\DAM2V\EjerciciosMovil\Relacion3\Ejercicio-14.dart
/*
Ejercicio 14: Gestión de un Map (grupo Whatsapp) con menú.
Demostración de métodos/propiedades:
- isEmpty / isNotEmpty: comprobar si el Map tiene elementos
- containsKey: verificar existencia de una persona
- putIfAbsent: añadir sin sobrescribir si existe
- remove: eliminar por clave
- entries: pares clave/valor
- keys: conjunto de claves
- values: colección de valores
- length: tamaño del Map
*/

import 'dart:io';

void main() {
  final Map<String, String> grupoWhatsapp = {
    'Pepe': '111111111',
    'María': '222222222',
    'Ana': '3333333',
  };

  while (true) {
    print('\n== Menú Grupo Whatsapp ==');
    print('1. Incluir persona');
    print('2. Eliminar persona');
    print('3. Buscar persona');
    print('4. Mostrar componentes del grupo');
    print('5. Salir');
    stdout.write('Opción: ');
    final op = stdin.readLineSync()?.trim();

    switch (op) {
      case '1':
        stdout.write('Nombre: ');
        final nombre = stdin.readLineSync()?.trim();
        stdout.write('Teléfono: ');
        final telefono = stdin.readLineSync()?.trim();
        if (nombre == null || nombre.isEmpty || telefono == null || telefono.isEmpty) {
          print('Datos inválidos.');
          break;
        }
        final anadido = grupoWhatsapp.putIfAbsent(nombre, () => telefono);
        if (anadido != telefono) {
          print('Ya existía "$nombre". No se sobreescribe (teléfono actual: ${grupoWhatsapp[nombre]}).');
        } else {
          print('Añadido "$nombre" -> $telefono');
        }
        break;

      case '2':
        if (grupoWhatsapp.isEmpty) {
          print('Mapa vacío.');
          break;
        }
        stdout.write('Nombre a eliminar: ');
        final nombre = stdin.readLineSync()?.trim();
        if (nombre == null || nombre.isEmpty) {
          print('Entrada vacía.');
          break;
        }
        final eliminado = grupoWhatsapp.remove(nombre);
        if (eliminado == null) {
          print('"$nombre" no estaba en el grupo.');
        } else {
          print('Eliminado "$nombre" (tel: $eliminado).');
        }
        break;

      case '3':
        stdout.write('Nombre a buscar: ');
        final nombre = stdin.readLineSync()?.trim();
        if (nombre == null || nombre.isEmpty) {
          print('Entrada vacía.');
          break;
        }
        if (grupoWhatsapp.containsKey(nombre)) {
          print('"$nombre" encontrado. Teléfono: ${grupoWhatsapp[nombre]}');
        } else {
          print('"$nombre" no está en el grupo.');
        }
        break;

      case '4':
        if (grupoWhatsapp.isNotEmpty) {
          print('Tamaño (length): ${grupoWhatsapp.length}');
          print('Claves (keys): ${grupoWhatsapp.keys}');
          print('Valores (values): ${grupoWhatsapp.values}');
          print('Entries (clave->valor):');
          for (final e in grupoWhatsapp.entries) {
            print('  ${e.key} -> ${e.value}');
          }
        } else {
          print('Mapa vacío.');
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