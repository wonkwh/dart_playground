import 'package:dart_playground/dart_playground.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('dart-list-enumeration-with-index', () {
    expect(insteadOfThis(), 'Wonhee');
    expect(doThisEnum(), 'Wonhee');
  });

  test('enum-assoicated-value', () {
    expect(AnimalType.cat.name, 'cat');
    expect(AnimalType.parrot.index, 2);
  });
}
