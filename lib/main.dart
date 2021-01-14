import 'package:employee_db/providers/organizations.dart';
import 'package:employee_db/screens/organization_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:employee_db/screens/home_screen.dart';
import 'package:employee_db/screens/organizations_screen.dart';
import 'package:employee_db/screens/employees_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Organizations>(
      create: (_) => Organizations(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                button: TextStyle(color: Colors.white),
              ),
        ),
        home: HomeScreen(),
        routes: {
          OrganizationsScreen.routeName: (_) => OrganizationsScreen(),
          EmployeesScreen.routeName: (_) => EmployeesScreen(),
          OrganizationDetailsScreen.routeName: (_) =>
              OrganizationDetailsScreen(),
        },
      ),
    );
  }
}
