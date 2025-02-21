# Sprints User Builder Pattern Task

## Overview

This project demonstrates the Builder Pattern in Dart by creating a `User` class and a `UserBuilder` class to facilitate the construction of `User` objects.

## Why Use the Builder Pattern?

The Builder Pattern helps construct complex objects step by step, improving readability and maintainability. Instead of cluttering constructors with optional parameters, the `UserBuilder` class allows for a clean and flexible way to create `User` instances.

## User Class

```dart
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
```

## UserBuilder Class

```dart
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
```

## Example Usage

```dart
void main() {
    // Creating a User with only required fields
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
```

## Output

```
User {
    firstName: Omar,
    lastName: Ameer,
    age: null,
    phone: null
}

User {
    firstName: Will,
    lastName: Smith,
    age: 30,
    phone: 123-456-7890
}
```

## Key Benefits

✅ Improves readability and maintainability.

✅ Allows flexible object creation with optional parameters.

✅ Reduces constructor parameter complexity.

## Conclusion

The Builder Pattern is a powerful way to construct objects with optional parameters in Dart. By separating object creation into a dedicated builder class, we achieve cleaner and more modular code.
