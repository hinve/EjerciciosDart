void main () {
  String cadena = "Hola q tal";
  String integer = "1234";
  String doublee = "12.34";
  String boleano = "true";
  String lista = "[1, 2, 3]";
  String mapa = "{1: 'uno', 2: 'dos'}";
  String enumerado = "estado.activo";
  String set = "{1, 2, 3}";

  String cadenaConvertida = cadena;
  int integerConvertido = int.parse(integer);
  double doubleConvertido = double.parse(doublee);
  bool boleanoConvertido = boleano.toLowerCase() == 'true';
  List listaConvertida = lista
      .substring(1, lista.length - 1)
      .split(',')
      .map((e) => int.parse(e.trim()))
      .toList();
  Map mapaConvertido = {};
  mapaConvertido = Map.fromEntries(
      mapa
          .substring(1, mapa.length - 1)
          .split(',')
          .map((e) {
            var pair = e.split(':');
            return MapEntry(int.parse(pair[0].trim()),
                pair[1].trim().replaceAll("'", ""));
          })
          .toList());
   Set setConvertido = Set.from(
      set
          .substring(1, set.length - 1)
          .split(',')
          .map((e) => int.parse(e.trim()))
          .toList());
  
  print(cadenaConvertida);
  print(integerConvertido);
  print(doubleConvertido);
  print(boleanoConvertido);
  print(listaConvertida);
  print(mapaConvertido);
  print(setConvertido);
}