import 'dart:math';

    enum estado {
      activo,
      inactivo,
      pendiente
    }

void main() {
    String frase = "Hola q tal";

    int num = 2;

    double numD = 2.05;

    bool boleano = true;

    List lista = [1, 2, 3];

    Map mapa = {1: "uno", 2: "dos", 3: "tres"};

    Set conjunto = {1, 2, 3};

    print(frase + num.toString());
    print(frase + numD.toString());
    print(frase + boleano.toString());
    print(frase + lista.toString());
    print(frase + mapa.toString());
    print(frase + estado.activo.toString());
    print(frase + conjunto.toString());
}