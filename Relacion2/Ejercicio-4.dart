/* 
 * Ejercicio 4: Funciones de flecha (arrow functions)
 * 
 * Este programa demuestra la sintaxis de función de flecha (=>)
 * que es una forma concisa de escribir funciones de una sola expresión.
 * 
 * Sintaxis: tipo nombre(parametros) => expresion;
 * Equivale a: tipo nombre(parametros) { return expresion; }
 */

/// Función de flecha que imprime nombre y apellidos
/// Si apellidos es null, muestra un mensaje por defecto
void imprimirNombreYapellidos(String nombre, String? apellidos) => 
    print("Nombre: ${nombre}\nApellidos: ${apellidos == null ? 'No se saben los apellidos' : apellidos}");

// La función anterior es equivalente a:
// void imprimirNombreYapellidos(String nombre, String? apellidos) {
//   print("Nombre: ${nombre}\nApellidos: ${apellidos == null ? 'No se saben los apellidos' : apellidos}");
// }

void main() {
  // Llamar a la función con apellidos = null
  imprimirNombreYapellidos("Joselito", null);
  // Output esperado:
  // Nombre: Joselito
  // Apellidos: No se saben los apellidos
}