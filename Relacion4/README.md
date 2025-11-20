# Ejercicios Dart - Relación 4

Este proyecto contiene las soluciones a la Relación 4 de ejercicios de Dart (Programación Orientada a Objetos).

## Estructura

- `src/`: Contiene el código fuente de los ejercicios (Ejercicio-01.dart a Ejercicio-13.dart).
- `test/`: Contiene los tests unitarios solicitados (Ejercicio-14_test.dart a Ejercicio-16_test.dart).
- `pubspec.yaml`: Configuración del proyecto y dependencias.

## Requisitos

- Dart SDK instalado (versión >= 3.0.0).
- Ejecutar `dart pub get` para instalar las dependencias.

## Ejecución de Ejercicios

Para ejecutar un ejercicio individualmente, usa el comando `dart run`:

```bash
dart run src/Ejercicio-01.dart
dart run src/Ejercicio-02.dart
# ...
dart run src/Ejercicio-13.dart
```

## Ejecución de Tests

Para ejecutar los tests, usa el comando `dart test`:

```bash
# Ejecutar todos los tests
dart test

# Ejecutar un test específico
dart test test/Ejercicio-14_test.dart
```

## Descripción de Ejercicios

1. **Clase Persona**: Refactorización de código imperativo a POO.
2. **Clase Restaurant**: Extensiones y manejo de listas.
3. **Clase BanderaFranjas**: Comparación de objetos y uso de `package:collection`.
4. **Clase Punto**: Coordenadas y traslación.
5. **Clase Vector**: Operaciones vectoriales usando `Punto`.
6. **Refactorización Vector**: Mejora de código existente.
7. **Figuras Geométricas**: Herencia, clases abstractas y polimorfismo.
8. **Cuenta Bancaria**: Clase básica.
9. **Cuentas Especializadas**: Herencia (Débito/Crédito) y métodos abstractos.
10. **Cuenta Unificada**: Refactorización sin herencia (discusión).
11. **Clase Fracción**: Operaciones matemáticas y simplificación.
12. **Fracción Comparable**: Extensión con métodos de comparación.
13. **Mixin Comparable**: Implementación de mixin genérico para comparaciones.
14. **Tests Punto/Vector**: Pruebas unitarias.
15. **Tests Cuentas**: Pruebas unitarias.
16. **Tests Fracción**: Pruebas unitarias.
