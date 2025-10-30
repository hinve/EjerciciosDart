void mostrarDiasLaborablesLista() {
  List<String> diasLaborables = [
    "Lunes",
    "Martes",
    "Miercoles",
    "Jueves",
    "Viernes",
  ];

  diasLaborables.add("Sabado");
  diasLaborables.add("Domingo");

  diasLaborables.forEach((dia) => print(dia));
}

void mostrarDiasLaborablesMap() {
  Map<String, int> nombresYEdades = {
    "Jose": 12,
    "Naiara": 24,
    "Hector": 24,
    "Pedro": 72,
  };

  nombresYEdades.forEach((nombre, edad) => print("${nombre} tiene ${edad} anyos"));

}

void main() {
  mostrarDiasLaborablesLista();
  mostrarDiasLaborablesMap();
}