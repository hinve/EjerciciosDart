import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  
  int var1;
  int var2;
  String var3;

  print('Porfavor ingresa un operador: ');
  String? operador = stdin.readLineSync(encoding: utf8);

  print('Introduce los numeros: 1. ');
  int? num1 = int.tryParse(stdin.readLineSync(encoding: utf8) ?? '');

}