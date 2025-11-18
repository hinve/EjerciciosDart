/* 
 * Ejercicio 5: Clasificador de triángulos
 * 
 * Este programa clasifica un triángulo según la longitud de sus lados:
 * - Equilátero: todos los lados son iguales
 * - Isósceles: dos lados son iguales
 * - Escaleno: todos los lados son diferentes
 */

void main(List<String> args) {
  // Declaración de los tres lados del triángulo
  var lado1 = 4.0;
  var lado2 = 4.0;
  var lado3 = 4.0;

  // Clasificación del triángulo según sus lados
  
  // Equilátero: los 3 lados son iguales
  if (lado1 == lado2 && lado2 == lado3 && lado1 == lado3) {
    print("El triangulo es equilatero");
  } 
  // Isósceles: al menos 2 lados son iguales
  else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
    print("El triangulo es isosceles");
  } 
  // Escaleno: todos los lados son diferentes
  else {
    print("El triangulo es escaleno");
  }
}