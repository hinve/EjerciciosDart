String toBinary(int numero) {
  String resultado = "";
  if (numero == 1) {
    return "1";
  } else if (numero == 0) {
    return "0";
  } else {
    while(numero > 0) {
      resultado += (numero % 2).toString();
      numero = (numero / 2).toInt();
    }
  }
  return resultado.split('').reversed.join();
}

void main() {
  int numero = 10;
  String resultado = toBinary(numero);
  print("El numero ${numero} en binario es: ${resultado}");
}