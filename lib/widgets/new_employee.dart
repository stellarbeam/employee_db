import 'package:flutter/material.dart';
import 'package:employee_db/models/employee.dart';

class NewEmployee extends StatefulWidget {
  final String orgId;
  final Function addNewEmployee;

  NewEmployee(this.orgId, this.addNewEmployee);

  @override
  _NewEmployeeState createState() => _NewEmployeeState();
}

class _NewEmployeeState extends State<NewEmployee> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _idController = TextEditingController();
  DateTime dob;

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) return;
      setState(() {
        dob = pickedDate;
      });
    });
  }

  void _onSubmit() {
    final firstName = _firstNameController.text;
    final lastName = _lastNameController.text;
    final id = _idController.text;

    if (firstName.isEmpty || lastName.isEmpty || id.isEmpty) {
      return;
    }

    print("Adding new employee");

    widget.addNewEmployee(firstName, lastName, dob, widget.orgId, id);

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
                decoration: InputDecoration(labelText: 'First Name'),
                controller: _firstNameController,
                onSubmitted: (_) {},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Last Name'),
                controller: _lastNameController,
                onSubmitted: (_) {},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Employee ID'),
                controller: _idController,
                onSubmitted: (_) {},
              ),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        dob == null
                            ? 'Choose Date of Birth'
                            : 'Picked date: ${dob.day}/${dob.month}/${dob.year}',
                      ),
                    ),
                    FlatButton(
                      textColor: Theme.of(context).primaryColor,
                      child: Text(
                        'Pick Date',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: _presentDatePicker,
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('Add Employee'),
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
