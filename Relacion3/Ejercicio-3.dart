import 'dart:io';



void main() {
  String frase = """
  hola
  qie
  tal
  """;
  
  if(frase.toLowerCase() == frase) {
    print("Esta todo en minusculas");
  } else if (frase.toUpperCase() == frase) {
    print("Esta todo en mayusculas.");
  } else {
    print("Ni uno ni otro.");
  }
}