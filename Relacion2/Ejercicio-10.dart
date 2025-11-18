/* 
 * Ejercicio 10: Conversor de decimal a binario
 * 
 * Este programa convierte un número decimal (base 10) a su
 * representación binaria (base 2).
 * 
 * Algoritmo:
 * 1. Dividir el número entre 2
 * 2. Guardar el resto (0 o 1) - este es un dígito binario
 * 3. Repetir con el cociente hasta que sea 0
 * 4. Invertir la secuencia de dígitos
 * 
 * Ejemplo: 10 en binario
 * 10 / 2 = 5 resto 0
 *  5 / 2 = 2 resto 1
 *  2 / 2 = 1 resto 0
 *  1 / 2 = 0 resto 1
 * Leyendo de abajo hacia arriba: 1010
 */

/// Convierte un número decimal a su representación binaria
String toBinary(int numero) {
  String resultado = "";
  
  // Casos especiales: 0 y 1
  if (numero == 1) {
    return "1";
  } else if (numero == 0) {
    return "0";
  } 
  // Caso general: convertir mediante divisiones sucesivas
  else {
    while(numero > 0) {
      // Añadir el resto (0 o 1) al resultado
      resultado += (numero % 2).toString();
      // Dividir el número entre 2 (división entera)
      numero = (numero / 2).toInt();
    }
  }
  
  // Invertir la cadena porque los dígitos se obtuvieron al revés
  // split('') convierte String en lista de caracteres
  // reversed invierte la lista
  // join() convierte la lista de nuevo en String
  return resultado.split('').reversed.join();
}

void main() {
  int numero = 10;
  String resultado = toBinary(numero);
  print("El numero ${numero} en binario es: ${resultado}");
  // Output esperado: El numero 10 en binario es: 1010
}