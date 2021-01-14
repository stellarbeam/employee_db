import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:employee_db/screens/organization_details_screen.dart';
import 'package:employee_db/providers/organization.dart';

class OrganizationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final organization = Provider.of<Organization>(context);
    return ListTile(
      title: Text(organization.name),
      subtitle: Text('OrgID: ${organization.organizationId}'),
      onTap: () {
        print(organization.employees.length);
        Navigator.of(context).pushNamed(
          OrganizationDetailsScreen.routeName,
          arguments: organization.organizationId,
        );
      },
    );
  }
}
