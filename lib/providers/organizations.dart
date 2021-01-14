import 'package:flutter/foundation.dart';

import 'package:employee_db/providers/organization.dart';
import 'package:employee_db/models/employee.dart';

class Organizations with ChangeNotifier {
  List<Organization> _list;

  Organizations() {
    // for default view
    _list = [
      Organization('Jio', 'JIO-X583'),
      Organization('Airtel', 'AIR-J512'),
    ];

    _list[0].addEmployee(
      Employee(
        'Kashinath',
        'Patekar',
        DateTime(2000, 1, 1),
        _list[0].organizationId,
        DateTime.now().toString(),
      ),
    );

    _list[1].addEmployee(
      Employee(
        'Horshod',
        'Mehta',
        DateTime(1970, 3, 5),
        _list[1].organizationId,
        DateTime.now().toString(),
      ),
    );
  }

  List<Organization> get list {
    return [..._list];
  }

  void addOrganization(Organization organization) {
    _list.add(organization);
    notifyListeners();
  }

  Organization findById(id) {
    return _list.firstWhere((org) => org.organizationId == id);
  }
}
