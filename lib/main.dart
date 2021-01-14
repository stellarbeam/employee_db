import 'package:flutter/material.dart';
import 'package:employee_db/screens/home_screen.dart';
import 'package:employee_db/screens/organizations_screen.dart';
import 'package:employee_db/screens/employees_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        OrganizationsScreen.routeName: (_) => OrganizationsScreen(),
        EmployeesScreen.routeName: (_) => EmployeesScreen(),
      },
    );
  }
}
