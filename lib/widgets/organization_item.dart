import 'package:employee_db/models/organization.dart';
import 'package:flutter/material.dart';

class OrganizationItem extends StatelessWidget {
  final Organization organization;

  const OrganizationItem(this.organization);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(organization.name),
      subtitle: Text('OrgID: ${organization.organizationId}'),
      onTap: () {
        // push org. detail page
      },
    );
  }
}
