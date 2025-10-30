void main(List<String> args) {
  var lado1 = 4.0;
  var lado2 = 4.0;
  var lado3 = 4.0;

  if (lado1 == lado2 && lado2 == lado3 && lado1 == lado3) {
    print("El triangulo es equilatero");
  } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
    print("El triangulo es isosceles");
  } else {
    print("El triangulo es escaleno");
  }
}