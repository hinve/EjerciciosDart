void main() {
  Map<String, int> mapa = {
    "Jose": 12,
    "Naiara": 24,
    "Hector": 24,
  };

  // mostrando clave valor
  mapa.forEach((nombre, edad) => print("${nombre} tiene ${edad} anyos"));
  
  // mostrando solo claves
  mapa.keys.forEach((nombre) => print("Nombre: ${nombre}"));

  // mostrando solo valores
  mapa.values.forEach((edad) => print("Edad: ${edad}"));
}