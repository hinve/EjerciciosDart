/*
  2- Haz un programa Dart “adivina un número entre 1 y 100”. El programa deberá extraer un 
número al azar, ir pidiendo al usuario exterior que lo adivine, y darle pistas (“te pasaste”, “te 
quedaste corto”), hasta que lo acierte. En ese momento, mostrará una felicitación, así como 
el número de intentos que te ha costado acertar.  
 
Probar distintas estrategias. La estrategia más exitosa en promedio es la búsqueda binaria 
 
Para  resolver  el  resto  de  ejercicios  de  esta  relación,  estudiaremos  a  fondo  la  librería 
dart:core.  No  será  necesario  importarla,  pues está “built-in”, pero se recomienda dar un 
repaso a la documentación al respecto. 
*/

import 'dart:math';
import 'dart:io';

int numeroAleatorio() => Random().nextInt(100) + 1;

void main() {
  int numeroSecreto = numeroAleatorio();
  int intentos = 0;
  int? intentoUsuario;

  print("¡Bienvenido al juego de adivinar el número!");
  print("He seleccionado un número entre 1 y 100. ¿Puedes adivinar cuál es?");

  do {
    stdout.write("Introduce tu intento: ");
    String? input = stdin.readLineSync();
    intentoUsuario = int.tryParse(input ?? '');

    if (intentoUsuario == null) {
      print("Por favor, ingresa un número válido.");
      continue;
    }

    intentos++;

    if (intentoUsuario < numeroSecreto) {
      print("Te quedaste corto.");
    } else if (intentoUsuario > numeroSecreto) {
      print("Te pasaste.");
    } else {
      print("¡Felicidades! Has adivinado el número $numeroSecreto en $intentos intentos.");
    }
  } while (intentoUsuario != numeroSecreto);
}