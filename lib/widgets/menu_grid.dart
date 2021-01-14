import 'package:flutter/material.dart';
import 'package:employee_db/widgets/menu_item.dart';
import 'package:employee_db/screens/organizations_screen.dart';
import 'package:employee_db/screens/employees_screen.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MenuItem(
            'Organizations',
            'assets/images/organization.jpeg',
            OrganizationsScreen.routeName,
          ),
          MenuItem(
            'Employees',
            'assets/images/employee.jpeg',
            EmployeesScreen.routeName,
          ),
        ],
      ),
    );
  }
}
