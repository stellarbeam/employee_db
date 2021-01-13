import 'package:employee_db/models/person.dart';

class Employee extends Person {
  final String organizationId;
  final String employeeId;
  Employee(
    String firstName,
    String lastName,
    DateTime _dateTime,
    this.organizationId,
    this.employeeId,
  ) : super(firstName, lastName, _dateTime);

  String get fullName {
    return "$firstName $lastName";
  }
}
