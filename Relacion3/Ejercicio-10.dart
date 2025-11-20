// Validación básica de correos electrónicos.
// Ejemplos válidos: user@example.com, john.doe@mail.co.uk, a_b+tag-1@sub.domain.io
// Ejemplos inválidos: user@, @dominio.com, user@dominio, user@@dom.com, espacio en local

bool esEmail(String s) {
  final reg = RegExp(
    r'^([a-zA-Z0-9._%+\-]+)@([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,24}$'
  );
  return reg.hasMatch(s);
}

void main() {
  final pruebas = [
    'user@example.com',
    'john.doe@mail.co.uk',
    'a_b+tag-1@sub.domain.io',
    'USER@EXAMPLE.ORG',
    // Invalid
    'user@',
    '@dominio.com',
    'user@dominio',
    'user@@dom.com',
    'user name@example.com',
    'user@exa_mple.com',
    'user@example.c',      // TLD demasiado corto
    'user@example.toolongtlddddd' // TLD demasiado largo
  ];

  for (final e in pruebas) {
    print('$e -> ${esEmail(e)}');
  }
}