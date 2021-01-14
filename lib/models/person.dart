class Person {
  final String firstName;
  final String lastName;
  final DateTime _dateOfBirth;

  Person(
    this.firstName,
    this.lastName,
    this._dateOfBirth,
  );

  int get age {
    var today = DateTime.now();
    // TODO: replace with by-hand method logic
    return (today.difference(_dateOfBirth).inDays / 365.25).floor();
  }
}
