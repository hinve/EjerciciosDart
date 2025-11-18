/* 
 * Ejercicio 19: Diferentes formas de recorrer un Map
 * 
 * Este programa demuestra tres formas de iterar sobre un Map:
 * 1. Acceder a claves y valores simultáneamente
 * 2. Acceder solo a las claves
 * 3. Acceder solo a los valores
 */

void main() {
  // Crear un Map con nombres y edades
  Map<String, int> mapa = {
    "Jose": 12,
    "Naiara": 24,
    "Hector": 24,
  };

  // FORMA 1: Recorrer mostrando clave y valor juntos
  // forEach recibe una función con dos parámetros: (clave, valor)
  mapa.forEach((nombre, edad) => print("${nombre} tiene ${edad} anyos"));
  
  // FORMA 2: Recorrer mostrando solo las claves
  // .keys devuelve un Iterable con todas las claves del Map
  mapa.keys.forEach((nombre) => print("Nombre: ${nombre}"));

  // FORMA 3: Recorrer mostrando solo los valores
  // .values devuelve un Iterable con todos los valores del Map
  mapa.values.forEach((edad) => print("Edad: ${edad}"));
}