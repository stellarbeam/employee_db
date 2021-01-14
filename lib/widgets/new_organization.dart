import 'package:flutter/material.dart';
import 'package:employee_db/providers/organization.dart';

class NewOrganization extends StatefulWidget {
  final Function addNewOrganization;

  NewOrganization(this.addNewOrganization);

  @override
  _NewOrganizationState createState() => _NewOrganizationState();
}

class _NewOrganizationState extends State<NewOrganization> {
  final _nameController = TextEditingController();
  final _idController = TextEditingController();

  void _onSubmit() {
    final name = _nameController.text;
    final id = _idController.text;

    if (name.isEmpty || id.isEmpty) {
      return;
    }

    widget.addNewOrganization(Organization(name, id));

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: _nameController,
                onSubmitted: (_) {},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Organization ID'),
                controller: _idController,
                onSubmitted: (_) {},
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('Add Organization'),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.button.color,
                onPressed: _onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
