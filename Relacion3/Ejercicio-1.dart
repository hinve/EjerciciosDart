/*
  * 1- Vamos a resolver por fin, aunque de forma no satisfactoria estéticamente, el problema de 
  * introducir  valores  por  entrada  estándar  y  validarlos  antes de que propaguen un error en 
  * tiempo de ejecución. Con valores numéricos, será fácil, con los String, algo más complejo. 
 
  * Volveremos  a  versionar  el  ejercicio  6  de  la  relación  (II)  que  calculaba  la suma de los n 
  * primeros números naturales, pero esta vez, el valor de n será solicitado por consola. 
  
  * Para ello deberás importar la librería dart:io e invocar a las funciones: 
 
  * ●  stdout.write("Introduce un número ") → devuelve void 
  * ●  stdin.readLineSync() → devuelve un string captado por la entrada estándar 
  * ●  int.parse() → convierte un String en número entero (se puede utilizar también con 
  * double y bool) 
 
  * También deberás ajustar el entorno de ejecución dentro de VSCode de la siguiente manera: 
  * Hasta  ahora  mismo,  la  consola  que  muestra  los  resultados  es  la  de  Depuración 
  * (Debug) que no se adapta exactamente al comportamiento de stdin. 
  * Puedes  cambiar  esto  yendo  Extensiones  ->  Dart.  pulsa  la  ruedecita  de  settings que 
  * aparece bajo el título, y después pulsar Settings: 
 
  * Si  te  desplazas  hacia  abajo,  en  el  apartado  Run  &  Debug  encontrarás  "Dart:  Cli 
  * Console". Debes ponerla a “terminal”. Finalmente, reinicia VSCode 
  * 1
*/

import 'dart:io';

int sumarNPrimerosNumerosNaturales(int n) {
  int res = 0;  // Variable local (no se usa en esta versión)

  // Caso base: cuando n es 1, devuelve 1
  if (n == 1){
    return 1;
  } 
  // Caso recursivo: suma n más el resultado de suma(n-1)
  else {
    return n + sumarNPrimerosNumerosNaturales(n - 1);
  }
}

void main() {
  stdout.write("Introduce un número: ");
  try {
    String? input = stdin.readLineSync(); // Leer entrada del usuario
    int n = int.parse(input!); // Convertir la entrada a entero
    sumarNPrimerosNumerosNaturales(n);
    print("La suma de los ${n} primeros numeros es: ${sumarNPrimerosNumerosNaturales(n)}");
  } catch (e) {
    print("Error: Por favor, ingrese un numero valido.");
    return;  // Termina la ejecución del programa
  }
}