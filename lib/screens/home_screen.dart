import 'package:flutter/material.dart';
import 'package:employee_db/widgets/menu_grid.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Database'),
      ),
      body: MenuGrid(),
    );
  }
}
