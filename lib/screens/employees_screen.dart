import 'package:flutter/material.dart';

class EmployeesScreen extends StatelessWidget {
  static const routeName = '/add-emp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Employee Database'),
        ),
        body: Center(
          child: Text('This is add employee page'),
        ));
  }
}
