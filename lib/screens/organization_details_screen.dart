import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:employee_db/providers/organizations.dart';
import 'package:employee_db/models/employee.dart';
import 'package:employee_db/widgets/new_employee.dart';

class OrganizationDetailsScreen extends StatefulWidget {
  static const routeName = '/org-details';

  @override
  _OrganizationDetailsScreenState createState() =>
      _OrganizationDetailsScreenState();
}

class _OrganizationDetailsScreenState extends State<OrganizationDetailsScreen> {
  void _openNewEmployeeForm(
    BuildContext context,
    Function addNewEmployee,
    String orgId,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (_) => NewEmployee(orgId, addNewEmployee),
    );
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final organization = Provider.of<Organizations>(context).findById(id);
    final employees = organization.employees;
    void _addNewEmployee(
      String firstName,
      String lastName,
      DateTime dob,
      String orgId,
      String empId,
    ) {
      setState(() {
        organization.addEmployee(
          Employee(firstName, lastName, dob, orgId, empId),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text("Employees")),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(employees[index].fullName),
          subtitle: Text("EmpID: ${employees[index].employeeId}"),
          trailing: Text("Age: ${employees[index].age}"),
        ),
        itemCount: employees.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _openNewEmployeeForm(
            context,
            _addNewEmployee,
            organization.organizationId,
          );
        },
      ),
    );
  }
}
