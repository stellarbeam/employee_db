import 'package:employee_db/models/organization.dart';
import 'package:flutter/foundation.dart';

class Organizations with ChangeNotifier {
  List<Organization> _list = [
    Organization('Jio', 'JIO-X583'),
    Organization('Airtel', 'AIR-J512'),
  ];

  List<Organization> get list {
    return [..._list];
  }

  void addOrganization(Organization organization) {
    _list.add(organization);
    notifyListeners();
  }
}
