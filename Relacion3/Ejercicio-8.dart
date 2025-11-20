// Valida colores hex RGB en formato #RGB o #RRGGBB.
// Ejemplos válidos: #4F6, #982A3B
// Ejemplos inválidos: red, 987s, 882244 (falta #), #12345 (5 dígitos), #ZZZ (no hex)

bool esColorHex(String s) {
  final reg = RegExp(r'^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
  return reg.hasMatch(s);
}

void main() {
  final pruebas = [
    '#4F6',
    '#982A3B',
    'red',
    '987s',
    '882244',
    '#12345',
    '#ZZZ',
    '#abc',
    '#ABCDEF',
    '#abcdex'
  ];

  for (final p in pruebas) {
    print('$p -> ${esColorHex(p)}');
  }
}