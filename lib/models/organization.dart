import 'package:employee_db/models/employee.dart';

class Organization {
  final String name;
  final String organizationId;
  List<Employee> _employees = [];

  Organization(this.name, this.organizationId);

  List<Employee> get employees {
    return [..._employees];
  }

  void addEmployee(Employee employee) {
    _employees.add(employee);
  }
}
