/*
 * Validación de DNI español.
 * Formato: 8 dígitos + letra (sin NIE). Ej: 12345678Z
 * La letra se calcula: letras[num % 23], donde:
 * letras = "TRWAGMYFPDXBNJZSQVHLCKE"
 */

const _letrasDni = "TRWAGMYFPDXBNJZSQVHLCKE";

bool esDni(String s) {
  final reg = RegExp(r'^[0-9]{8}[A-Za-z]$');
  if (!reg.hasMatch(s)) return false;

  final numero = int.parse(s.substring(0, 8));
  final letraEsperada = _letrasDni[numero % 23];
  final letraReal = s[8].toUpperCase();
  return letraReal == letraEsperada;
}

String? letraDni(int numero) {
  if (numero < 0 || numero > 99999999) return null;
  return _letrasDni[numero % 23];
}

void main() {
  final pruebas = [
    '12345678Z', // válido (12345678 % 23 = 14 -> Z)
    '00000000T', // válido (0 % 23 = 0 -> T)
    '12345678A', // letra incorrecta
    '87654321X', // comprobar
    '11111111H',
    'ABCDEFGHI', // inválido
    '1234567Z',  // 7 dígitos
    '123456789Z' // 9 dígitos
  ];

  for (final d in pruebas) {
    print('$d -> ${esDni(d)}');
  }

  // Ejemplo de obtención de letra
  final numEjemplo = 12345678;
  print('Letra para $numEjemplo: ${letraDni(numEjemplo)}');
}