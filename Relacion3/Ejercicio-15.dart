/*
Ejercicio 15: Uso de la clase Uri en Dart.

Objetivos:
1. Tomar un String con una URI (posiblemente con % escapados), decodificarlo y parsearlo.
2. Mostrar sus partes: scheme, host, port, path, pathSegments, fragment, query, queryParameters, authority, origin.
3. Construir URIs a partir de sus componentes (dos formas).
4. Probar con distintos tipos de URIs.

Notas:
- Uri.parse() analiza la cadena.
- Uri.decodeFull() decodifica la URI completa (espacios, etc).
- Uri.decodeComponent() decodifica solo partes codificadas.
- origin no es propiedad directa; se compone: scheme://host(:port?)
*/

void mostrarPartes(Uri uri) {
  // Construir "origin" manualmente (solo si tiene host)
  final origin = (uri.hasAuthority)
      ? '${uri.scheme}://${uri.host}${uri.hasPort ? ':${uri.port}' : ''}'
      : '(sin origin)';

  print('--- URI original: $uri');
  print('scheme        : ${uri.scheme}');
  print('host          : ${uri.host}');
  print('port          : ${uri.hasPort ? uri.port : '(sin puerto explícito)'}');
  print('authority     : ${uri.authority}');
  print('origin (calc) : $origin');
  print('path          : ${uri.path}');
  print('pathSegments  : ${uri.pathSegments}');
  print('fragment      : ${uri.fragment.isEmpty ? '(ninguno)' : uri.fragment}');
  print('query         : ${uri.query.isEmpty ? '(sin query)' : uri.query}');
  print('queryParameters: ${uri.queryParameters}');
  print('');
}

void main() {
  // 1. URI de ejemplo con espacios codificados y parámetros
  final cadenaUri =
      'https://example.com/path%20with%20spaces/file?user=pepe&id=42#section-2';

  // Decodificación (vista humana)
  final decodificada = Uri.decodeFull(cadenaUri);
  print('Cadena original : $cadenaUri');
  print('Decodificada    : $decodificada\n');

  // Parseo
  final uri1 = Uri.parse(cadenaUri);
  mostrarPartes(uri1);

  // 2. URI con puerto y múltiples segmentos
  final uri2 = Uri.parse('http://localhost:8080/api/v1/items/123?filter=all&page=3');
  mostrarPartes(uri2);

  // 3. URI con subdominios y fragment
  final uri3 = Uri.parse('https://sub.domain.co.uk/report/2025?mode=full#totales');
  mostrarPartes(uri3);

  // 4. URI sin fragmento y sin query
  final uri4 = Uri.parse('https://example.org/simple/path');
  mostrarPartes(uri4);

  // 5. Data URI (no tiene host)
  final dataUri = Uri.parse('data:text/plain;charset=utf-8,Hola%20Mundo');
  mostrarPartes(dataUri);

  // 6. Construcción manual con constructor Uri()
  final construida1 = Uri(
    scheme: 'https',
    host: 'api.example.com',
    pathSegments: ['v1', 'items', '123'],
    queryParameters: {'filter': 'recent', 'page': '2'},
    fragment: 'details',
  );
  print('Construida (Uri(...)) -> $construida1');
  mostrarPartes(construida1);

  // 7. Construcción con Uri.https (gestiona host + path + query)
  final construida2 = Uri.https(
    'files.example.net',
    '/download/report final.pdf', // espacios serán codificados
    {'token': 'ABC123', 'dl': '1'},
  );
  print('Construida (Uri.https) -> $construida2');
  mostrarPartes(construida2);

  // 8. Ejemplo de encode/decode de componente individual
  final componente = 'nombre archivo (final).txt';
  final codificado = Uri.encodeComponent(componente);
  final decodificado = Uri.decodeComponent(codificado);
  print('Componente original : $componente');
  print('Codificado          : $codificado');
  print('Decodificado        : $decodificado');
}