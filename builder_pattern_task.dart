class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User({
    required this.firstName,
    required this.lastName,
    this.age,
    this.phone,
  });

  @override
  String toString() {
    return 'User {\n  firstName: $firstName,\n  lastName: $lastName,\n  age: $age,\n  phone: $phone\n}\n';
  }
}

class UserBuilder {
  final String firstName;
  final String lastName;
  int? age;
  String? phone;

  UserBuilder({
    required this.firstName,
    required this.lastName,
  });

  UserBuilder setAge(int age) {
    this.age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    this.phone = phone;
    return this;
  }

  User build() {
    return User(
      firstName: firstName,
      lastName: lastName,
      age: age,
      phone: phone,
    );
  }
}

void main() {
  // Creating a User with the required fields only
  User user1 = UserBuilder(
    firstName: 'Omar',
    lastName: 'Ameer',
  ).build();
  print(user1);

  // Creating a User with all fields
  User user2 = UserBuilder(
    firstName: 'Will',
    lastName: 'Smith',
  ).setAge(30).setPhone('123-456-7890').build();
  print(user2);
}
