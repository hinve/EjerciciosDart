library validaciones;

const _letrasDni = "TRWAGMYFPDXBNJZSQVHLCKE";

bool esColorHex(String s) {
  final reg = RegExp(r'^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
  return reg.hasMatch(s);
}

bool esUrl(String s) {
  final reg = RegExp(
    r'^(https?:\/\/)'                                 // esquema
    r'([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,24}'               // dominio + TLD
    r'(:\d{1,5})?'                                    // puerto
    r'(\/[^\s?#]*)*'                                  // rutas
    r'(\?[^\s#]*)?'                                   // query
    r'(#[^\s]*)?$'                                    // fragmento
  );
  return reg.hasMatch(s);
}

bool esEmail(String s) {
  final reg = RegExp(r'^([a-zA-Z0-9._%+\-]+)@([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,24}$');
  return reg.hasMatch(s);
}

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