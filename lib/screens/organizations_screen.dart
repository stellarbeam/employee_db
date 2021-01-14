import 'package:flutter/material.dart';

class OrganizationsScreen extends StatelessWidget {
  static const routeName = '/add-org';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Employee Database'),
        ),
        body: Center(
          child: Text('This is add organization page'),
        ));
  }
}
