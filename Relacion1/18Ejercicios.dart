/* 
 * Ejercicio 18: Manejo de excepciones (try-catch-finally)
 * 
 * Este programa demuestra cómo manejar errores en tiempo de ejecución
 * usando bloques try-catch-finally para evitar que el programa termine abruptamente.
 * 
 * Estructura:
 * - try: código que puede lanzar una excepción
 * - catch: código que se ejecuta si ocurre la excepción
 * - finally: código que SIEMPRE se ejecuta (ocurra o no excepción)
 */

// Enum con los colores del arcoiris
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
  // Imprimir todos los valores del enum
  print(coloresArcoiris.values);

  // Imprimir un valor específico que SÍ existe
  print(coloresArcoiris.values.byName("Naranja"));
  
  // Bloque try: intentar código que puede fallar
  try {
    // Intentar acceder a un color que NO existe en el enum
    // Esto lanzará una excepción ArgumentError
    print(coloresArcoiris.values.byName("Morado"));
  } 
  // Bloque catch: capturar y manejar la excepción
  catch (e) {
    print("Error: El color 'Morado' no existe en el enum coloresArcoiris.");
  } 
  // Bloque finally: siempre se ejecuta (haya o no error)
  finally {
    print("Ejecución finalizada.");
  }
  
  // El programa continúa ejecutándose después del catch
}