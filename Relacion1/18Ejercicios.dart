// creo el enum de colores del arcoiris
enum coloresArcoiris {
  Rojo,
  Naranja,
  Amarillo,
  Verde,
  Azul,
  Indigo,
  Violeta
}

void main() {
  // imprimir todos los valores del enum
  print(coloresArcoiris.values);

  // imprimir uno solo
  print(coloresArcoiris.values.byName("Naranja"));
  try {
    // provocar excepcion al intentar imprimir un valor que no existe
    print(coloresArcoiris.values.byName("Morado"));
  } catch (e) { // capturar la excepcion
    print("Error: El color 'Morado' no existe en el enum coloresArcoiris.");
  } finally { // bloque finally
    print("Ejecución finalizada.");
  }
}