// Valida URLs HTTP/HTTPS simples: esquema, dominio, opcional puerto, ruta, query, fragmento.
// Ejemplos válidos: https://example.com, http://www.test.org/path?x=1#sec
// Ejemplos inválidos: ftp://x.com, http//mal, https://, http://x, ://example.com

bool esUrl(String s) {
  final reg = RegExp(
    r'^(https?:\/\/)'                                 // esquema
    r'([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,24}'               // dominio y TLD
    r'(:\d{1,5})?'                                    // puerto opcional
    r'(\/[^\s?#]*)*'                                  // rutas
    r'(\?[^\s#]*)?'                                   // query opcional
    r'(#[^\s]*)?$'                                    // fragmento opcional
  );
  return reg.hasMatch(s);
}

void main() {
  final pruebas = [
    'https://example.com',
    'http://www.test.org',
    'http://sub.domain.co.uk/path/to/resource',
    'https://example.com:8080/api/v1?user=abc&id=5#top',
    'http://x.io',
    'https://example.travel',
    // Invalid
    'ftp://example.com',
    'http//missing-colon.com',
    'https://',            // incompleta
    'http://x',            // TLD demasiado corto
    '://no-scheme.com',
    'https://bad space.com',
    'https://exa_mple.com', // guión bajo no permitido en dominio
  ];

  for (final u in pruebas) {
    print('$u -> ${esUrl(u)}');
  }
}