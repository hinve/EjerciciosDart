String? lastName(String fullName) {
final components = fullName. split(' ');
return components.length > 1 ? components.last : null;
}
void main(List<String> args) {
  String? nombre;

  /// se trabaja poniendo el interrogante
  /// un buen ejemplo para usar este tipo seria
  /// 
  // asignar esto:
  String last = lastName('Jaime Hernandez')!;
  // a esto:
  String? Ibst = lastName(' Jaime Hernandez');
}
