import 'validaciones.dart';

void main() {
  List pruebas = [
    '#4F6',
    '#982A3B',
    'red',
    '987s',
    '882244',
    '#12345',
    '#ZZZ',
  ];
  for (final p in pruebas) {
    print('$p -> ${esColorHex(p)}');
  }

    pruebas = [
    'https://example.com',
    'http://www.test.org/path?x=1#sec',
    'ftp://x.com',
    'http//mal',
    'https://',
  ];
  for (final u in pruebas) {
    print('$u -> ${esUrl(u)}');
  }

  pruebas = [
    'user@example.com',
    'john.doe@mail.co.uk',
    'user@',
    '@dominio.com',
    'user@@dom.com',
  ];
  for (final e in pruebas) {
    print('$e -> ${esEmail(e)}');
  }

  pruebas = [
    '12345678Z',
    '00000000T',
    '12345678A',
    '87654321X',
    'ABCDEFGHI',
  ];
  for (final d in pruebas) {
    print('$d -> ${esDni(d)}');
  }
  print('Letra para 12345678 -> ${letraDni(12345678)}');

  print('Color #abc -> ${esColorHex("#abc")}');
  print('URL https://example.com -> ${esUrl("https://example.com")}');
  print('Email user@test.com -> ${esEmail("user@test.com")}');
  print('DNI 00000000T -> ${esDni("00000000T")}');
  print('Letra DNI 12345678 -> ${letraDni(12345678)}');
}