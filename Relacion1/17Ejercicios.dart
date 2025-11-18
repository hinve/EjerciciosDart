/* 
 * Ejercicio 17: Enumeraciones (Enums)
 * 
 * Los enums son tipos especiales que representan un conjunto fijo de valores.
 * Son útiles para representar opciones limitadas (días de la semana,
 * estados, colores, etc.) de forma clara y type-safe.
 */

// Definir un enum con los colores del arcoiris
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
  // Obtener e imprimir todos los valores del enum
  print(coloresArcoiris.values);  // [Rojo, Naranja, Amarillo, ...]

  // Acceder a un valor específico del enum por su nombre
  print(coloresArcoiris.values.byName("Naranja"));  // Output: coloresArcoiris.Naranja

  // ⚠️ ADVERTENCIA: Esto lanzará una excepción en tiempo de ejecución
  // porque "Morado" no existe en el enum
  print(coloresArcoiris.values.byName("Morado"));
}