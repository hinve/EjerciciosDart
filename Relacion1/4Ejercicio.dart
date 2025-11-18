/* 
 * Ejercicio 4: Tipos nullable y null safety
 * 
 * Este programa demuestra el uso de nullable types en Dart:
 * - String? indica que la variable puede ser String o null
 * - El operador ! (bang) indica que estamos seguros de que el valor no es null
 * - Dart tiene null safety por defecto para evitar errores de referencia nula
 */

/// Función que extrae el apellido de un nombre completo
/// Devuelve null si solo hay un nombre (sin apellido)
String? lastName(String fullName) {
  // Divide el nombre completo en palabras separadas por espacios
  final components = fullName.split(' ');
  
  // Si hay más de una palabra, devuelve la última (apellido)
  // Si solo hay una palabra, devuelve null
  return components.length > 1 ? components.last : null;
}

void main(List<String> args) {
  // Declaración de variable nullable (puede ser String o null)
  String? nombre;

  // FORMA 1: Usando el operador ! (bang operator)
  // Indica que estamos SEGUROS de que el resultado NO será null
  // ⚠️ Si el resultado es null, lanzará una excepción en tiempo de ejecución
  String last = lastName('Jaime Hernandez')!;  // ✅ Funciona porque hay apellido
  
  // FORMA 2: Usando tipo nullable (recomendado)
  // Permite manejar el caso de que el valor sea null de forma segura
  String? Ibst = lastName(' Jaime Hernandez');  // ✅ Más seguro, puede ser null
  
  // EJEMPLO de cuándo usar cada uno:
  // - Usa ! solo si estás 100% seguro de que el valor no será null
  // - Usa ? para permitir null y manejar ambos casos de forma segura
}
