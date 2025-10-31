void imprimirNombreYapellidos(String nombre, String? apellidos) => print("Nombre: ${nombre}\nApellidos: ${apellidos == null ? 'No se saben los apellidos' : apellidos}");

void main() {
  imprimirNombreYapellidos("Joselito", null);
}