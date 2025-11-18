/* 
 * Ejercicio 16: Trabajando con List y Map
 * 
 * Este programa demuestra el uso de dos estructuras de datos:
 * - List: colección ordenada de elementos (similar a array)
 * - Map: colección de pares clave-valor (similar a diccionario)
 */

/// Función que trabaja con una Lista de Strings
void mostrarDiasLaborablesLista() {
  // Crear una lista de días laborables
  List<String> diasLaborables = [
    "Lunes",
    "Martes",
    "Miercoles",
    "Jueves",
    "Viernes",
  ];

  // Añadir elementos a la lista con add()
  diasLaborables.add("Sabado");
  diasLaborables.add("Domingo");

  // Recorrer la lista con forEach() e imprimir cada elemento
  diasLaborables.forEach((dia) => print(dia));
}

/// Función que trabaja con un Map de nombres y edades
void mostrarDiasLaborablesMap() {
  // Crear un Map con nombres como claves y edades como valores
  Map<String, int> nombresYEdades = {
    "Jose": 12,
    "Naiara": 24,
    "Hector": 24,
    "Pedro": 72,
  };

  // Recorrer el Map con forEach() accediendo a clave y valor
  nombresYEdades.forEach((nombre, edad) => print("${nombre} tiene ${edad} anyos"));
}

void main() {
  // Ejecutar ambas funciones
  mostrarDiasLaborablesLista();
  mostrarDiasLaborablesMap();
}