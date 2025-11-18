/* 
 * Ejercicio 3: Parámetros opcionales y valores por defecto
 * 
 * Este programa demuestra cómo manejar parámetros nullable (que pueden ser null)
 * usando el operador ternario (? :) para proporcionar valores por defecto.
 */

/// Función que imprime los datos de un empleado
/// Si los parámetros son null, usa valores por defecto
void imprimirEmpleado(String? nombre, int? id) {
  // Operador ternario: condición ? valorSiTrue : valorSiFalse
  // Si nombre es null, usa 'desconocido', si no, usa el nombre real
  // Si id es null, usa 999, si no, usa el id real
  print("El nombre: ${nombre == null ? 'desconocido' : nombre}\nID: ${id == null ? 999 : id}");
}

void main() {
  // Declarar variables nullable
  String? nombre = "Juanito";  // Tiene valor
  int? id;                     // Es null (no inicializado)

  // Llamar a la función
  imprimirEmpleado(nombre, id);
  // Output esperado:
  // El nombre: Juanito
  // ID: 999 (porque id es null)
}