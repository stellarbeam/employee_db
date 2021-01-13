import 'package:flutter/material.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 3 / 2,
      children: <Widget>[
        // TODO: Outsource widgets to MenuItem widgets
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(child: const Text("Add Organization")),
          color: Colors.pink,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(child: const Text("Add Employee")),
          color: Colors.pink,
        ),
      ],
    );
  }
}
