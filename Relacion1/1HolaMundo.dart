/* 
 * Ejercicio 1: Experimentar con declaración de tipos y función print
 * 
 * Este programa demuestra:
 * - Cómo mostrar mensajes por pantalla con print()
 * - Declaración de variables con tipos explícitos e implícitos
 * - Operaciones con tipos numéricos y String
 * - Diferentes formas de incluir comentarios en Dart
 */

void main() {
  // Imprime el mensaje "Hola Mundo" por consola
  print("Hola Mundo.");

  // Declaración de variables con tipo explícito (int) e implícito (var)
  int numero = 1;        // Declaración explícita de tipo entero
  var nombre = "Hector"; // Declaración implícita, Dart infiere que es String

  // Operaciones con variables
  print(numero + numero);  // Suma de enteros: 1 + 1 = 2
  print(nombre * 2);       // Repetición de String: "HectorHector"

  // Ejemplos de diferentes tipos de comentarios en Dart:
  
  // Comentario de una línea con //
  
  /* 
   * Comentario de
   * múltiples líneas
   * con /* */
   */
  
  /// Comentario de documentación (aparece en la ayuda del IDE)
  /// Se usa para documentar funciones, clases y métodos
  /// Al presionar Enter, se crea automáticamente otra línea de documentación
}

