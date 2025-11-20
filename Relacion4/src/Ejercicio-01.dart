// Ejercicio 1
// Refactoriza el código para crear una clase Persona que contenga como atributos nombre,
// edad, altura. Declara el constructor para generar instancias, un método
// personaDescripcion() para que muestre una instancia justo como el print de ese
// código. Reescribe el método toString().
// Una vez hecho esto, crea dos instancias de Persona y utilizalas para llamar al método
// personaDescripcion() y toString().

class Persona {
  String nombre;
  int edad;
  double altura;

  // Constructor
  Persona({required this.nombre, required this.edad, required this.altura});

  // Método personaDescripcion
  void personaDescripcion() {
    print("Mi nombre es $nombre. Tengo $edad años, tengo $altura metros de altura.");
  }

  // Reescribir toString
  @override
  String toString() {
    return 'Persona(nombre: $nombre, edad: $edad, altura: $altura)';
  }
}

void main() {
  // Crear dos instancias
  final persona1 = Persona(nombre: 'Andrea', edad: 36, altura: 1.84);
  final persona2 = Persona(nombre: 'Carlos', edad: 25, altura: 1.75);

  // Usar personaDescripcion
  print('--- Descripción ---');
  persona1.personaDescripcion();
  persona2.personaDescripcion();

  // Usar toString
  print('\n--- toString ---');
  print(persona1.toString());
  print(persona2.toString());
}
