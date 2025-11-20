// Ejercicio 2
// Dada la clase Restaurant, añade nuevas funcionalidades para que se pueda:
// ● obtener el número de ratings
// ● añadir otro rating
// ● añadir otros ratings (más de uno)
// ● calcular el rating medio

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  // Obtener el número de ratings
  int get numeroDeRatings => ratings.length;

  // Añadir otro rating
  void agregarRating(double rating) {
    ratings.add(rating);
  }

  // Añadir otros ratings (más de uno)
  void agregarRatings(List<double> nuevosRatings) {
    ratings.addAll(nuevosRatings);
  }

  // Calcular el rating medio
  double get ratingMedio {
    if (ratings.isEmpty) return 0.0;
    double suma = ratings.reduce((a, b) => a + b);
    return suma / ratings.length;
  }
}

void main() {
  // Ejemplo de uso
  // Usamos una lista mutable []
  final restaurante = Restaurant(
    name: 'El Buen Sabor',
    cuisine: 'Española',
    ratings: [4.5, 3.0, 5.0],
  );

  print('Restaurante: ${restaurante.name}');
  print('Número de ratings inicial: ${restaurante.numeroDeRatings}');
  print('Rating medio inicial: ${restaurante.ratingMedio}');

  print('\nAñadiendo un rating de 4.0...');
  restaurante.agregarRating(4.0);
  print('Número de ratings: ${restaurante.numeroDeRatings}');

  print('\nAñadiendo ratings [2.5, 5.0]...');
  restaurante.agregarRatings([2.5, 5.0]);
  print('Número de ratings final: ${restaurante.numeroDeRatings}');
  print('Rating medio final: ${restaurante.ratingMedio.toStringAsFixed(2)}');
}
