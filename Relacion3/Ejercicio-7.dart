import 'dart:io';

void main() {
  stdout.write('Introduce una frase: ');
  final frase = stdin.readLineSync() ?? '';

  stdout.write('Introduce la subcadena a buscar: ');
  final sub = stdin.readLineSync() ?? '';

  if (sub.isEmpty) {
    print('Subcadena vacía');
    return;
  }

  final primera = frase.indexOf(sub);
  final ultima = frase.lastIndexOf(sub);

  if (primera == -1) {
    print('La subcadena "$sub" no se encontró en la frase.');
  } else {
    print('Primera aparición en índice: $primera');
    print('Última aparición en índice: $ultima');
  }
}