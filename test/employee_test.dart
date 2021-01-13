import 'package:test/test.dart';
import 'package:employee_db/models/employee.dart';

void main() {
  test('Employee age getter should return correct age', () {
    final employee = Employee(
      'Kashinath',
      'Patekar',
      DateTime(2000, 1, 1),
      'ORG-001',
      'EMP-105',
    );

    expect(employee.age, DateTime.now().year - 2000);
  });

  test('Employee fullName getter should return correct name', () {
    final employee = Employee(
      'Kashinath',
      'Patekar',
      DateTime(2000, 1, 1),
      'ORG-001',
      'EMP-105',
    );

    expect(employee.fullName, 'Kashinath Patekar');
  });
}
