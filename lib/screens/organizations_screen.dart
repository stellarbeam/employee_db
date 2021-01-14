import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:employee_db/widgets/organization_item.dart';
import 'package:employee_db/widgets/new_organization.dart';
import 'package:employee_db/providers/organizations.dart';

class OrganizationsScreen extends StatelessWidget {
  static const routeName = '/add-org';

  void _openNewOrganizationForm(
      BuildContext context, Function addNewOrganization) {
    showModalBottomSheet(
      context: context,
      builder: (_) => NewOrganization(addNewOrganization),
    );
  }

  @override
  Widget build(BuildContext context) {
    final organizationsData = Provider.of<Organizations>(context);
    final organizations = organizationsData.list;
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Database'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => OrganizationItem(organizations[index]),
        itemCount: organizations.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openNewOrganizationForm(
          context,
          organizationsData.addOrganization,
        ),
      ),
    );
  }
}
