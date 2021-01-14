import 'package:employee_db/providers/organization.dart';
import 'package:test/test.dart';
import 'package:employee_db/models/employee.dart';

void main() {
  test('Organization should add employee', () {
    final employee = Employee(
      'Kashinath',
      'Patekar',
      DateTime(2000, 1, 1),
      'ORG-001',
      'EMP-105',
    );

    final organization = Organization('Jio', 'ORG-001');

    organization.addEmployee(employee);

    expect(organization.employees.length, 1);
  });
}
