// Ejercicio 3
// Vamos a crear una clase BanderaFranjas con los siguientes atributos:
// ● horizontal/vertical según sea la orientación de las franjas
// ● la lista de franjas de colores que la define
// ● nombre de país u organización (podría ser nulo)
// Vamos a crear para ella:
// ● un método constructor
// ● un método que muestre la bandera por pantalla con el nombre de los colores en franjas
// ● un método que compare dos banderas y diga si son idénticas. Investiga el uso de mapEquals()
// ● un método que compare dos banderas y diga si tiene las mismas franjas en diferente orientación
// ● un método que invierta el orden de los colores
// ● un método que invierta la orientación de las franjas

import 'package:collection/collection.dart'; // Necesario para ListEquality o mapEquals si fueran mapas

class BanderaFranjas {
  bool esVertical; // true = vertical, false = horizontal
  List<String> colores;
  String? nombre;

  // Constructor
  BanderaFranjas({
    required this.esVertical,
    required this.colores,
    this.nombre,
  });

  // Mostrar bandera
  void mostrarBandera() {
    String orientacion = esVertical ? 'Vertical' : 'Horizontal';
    String nombreStr = nombre != null ? '($nombre)' : '(Sin nombre)';
    print('Bandera $nombreStr - Orientación: $orientacion');
    print('Colores: ${colores.join(', ')}');
  }

  // Comparar si son idénticas
  bool esIdentica(BanderaFranjas otra) {
    // Comparamos orientación y colores
    if (esVertical != otra.esVertical) return false;
    // Usamos ListEquality para comparar el contenido de las listas
    return const ListEquality().equals(colores, otra.colores);
  }

  // Comparar si tienen las mismas franjas pero diferente orientación
  bool mismasFranjasDiferenteOrientacion(BanderaFranjas otra) {
    if (esVertical == otra.esVertical) return false; // Deben tener diferente orientación
    return const ListEquality().equals(colores, otra.colores);
  }

  // Invertir orden de colores
  void invertirColores() {
    colores = colores.reversed.toList();
  }

  // Invertir orientación
  void invertirOrientacion() {
    esVertical = !esVertical;
  }
}

void main() {
  var francia = BanderaFranjas(
    esVertical: true,
    colores: ['Azul', 'Blanco', 'Rojo'],
    nombre: 'Francia',
  );

  var holanda = BanderaFranjas(
    esVertical: false,
    colores: ['Rojo', 'Blanco', 'Azul'],
    nombre: 'Países Bajos',
  );

  var franciaCopia = BanderaFranjas(
    esVertical: true,
    colores: ['Azul', 'Blanco', 'Rojo'],
    nombre: 'Francia Copia',
  );

  print('--- Banderas ---');
  francia.mostrarBandera();
  holanda.mostrarBandera();

  print('\n--- Comparaciones ---');
  print('¿Francia es idéntica a Francia Copia? ${francia.esIdentica(franciaCopia)}');
  print('¿Francia es idéntica a Holanda? ${francia.esIdentica(holanda)}');

  // Creamos una bandera hipotética con los colores de Francia pero horizontal
  var franciaHorizontal = BanderaFranjas(
    esVertical: false,
    colores: ['Azul', 'Blanco', 'Rojo'],
    nombre: 'Francia Horizontal',
  );
  
  print('¿Francia tiene mismas franjas pero diferente orientación que Francia Horizontal? ${francia.mismasFranjasDiferenteOrientacion(franciaHorizontal)}');

  print('\n--- Modificaciones ---');
  print('Invirtiendo colores de Holanda...');
  holanda.invertirColores();
  holanda.mostrarBandera();

  print('Invirtiendo orientación de Francia...');
  francia.invertirOrientacion();
  francia.mostrarBandera();
}
