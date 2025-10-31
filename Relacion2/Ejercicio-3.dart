
void imprimirEmpleado(String? nombre, int? id) {
  print("El nombre: ${nombre == null ? 'desconocido' : nombre}\nID: ${id == null ? 999 : id}");
}

void main() {
  String? nombre = "Juanito";
  int? id;

  imprimirEmpleado(nombre, id);
}