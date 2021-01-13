import 'package:test/test.dart';
import 'package:employee_db/models/person.dart';

void main() {
  test('Person age getter should return correct age', () {
    final person = Person('Kashinath', 'Patekar', DateTime(2000, 1, 1));

    expect(person.age, DateTime.now().year - 2000);
  });
}
