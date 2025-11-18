import 'dart:io';

void main() {
  stdout.write("Introduce una frase: ");
  String? frase = stdin.readLineSync();

  String palabrasInvertidas = frase?.split(' ').reversed.join(' ').toLowerCase() ?? '';
  print("Frase con palabras invertidas: $palabrasInvertidas");

  String fraseReversa = frase?.split('').reversed.join('').toLowerCase() ?? '';
  print("Frase al revés: $fraseReversa");

  String fraseReversaSinEspacios = fraseReversa.replaceAll(' ', '');
  String fraseSinEspacios = frase?.replaceAll(' ', '').toLowerCase() ?? '';

  if (fraseSinEspacios == fraseReversaSinEspacios) {
    print("La frase es un palíndromo.");
  } else {
    print("La frase no es un palíndromo.");
  }
}