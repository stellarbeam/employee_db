import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:employee_db/models/employee.dart';
import 'package:employee_db/providers/organizations.dart';

class EmployeesScreen extends StatelessWidget {
  static const routeName = '/add-emp';

  @override
  Widget build(BuildContext context) {
    final organisations = Provider.of<Organizations>(context).list;
    final List<Employee> employees =
        organisations.fold([], (allEmps, org) => allEmps + org.employees);

    return Scaffold(
      appBar: AppBar(title: Text("All Employees")),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text("${employees[index].fullName}"),
          subtitle: Text("EmpID: ${employees[index].employeeId}"),
          trailing: Text("Age: ${employees[index].age}"),
        ),
        itemCount: employees.length,
      ),
    );
  }
}
