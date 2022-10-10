void main() {
  final user = User(id: 1, name: 'nam34e');
  final user2 = User(id: 2);
  print(user);
  print(user2);
  SomeClass.myMethod();

  final bert = Student(firstName: 'bert', lastName: '', grade: 95);
  final ernie = Student(firstName: 'ernie', lastName: '', grade: 85);
  print(bert);
  print(ernie);

  final sphere = Sphere(radius: 12);
  print(sphere.volumn);
  print(sphere.area);
}

// 为什么看Dart 
// 有一种当时在做monkey-swift的时候的一种既视感
// 很像我之前做的那个编程语言
class User {
  final int _id;
  final String _name;

  int get id => _id;
  String get name => _name;

  bool get isBigId => _id > 1000;

  // Unnamed + Initializer List + Private Property + Assertion
  const User({required int id, String name = 'anonymous'}) : assert(id >= 0), 
                                                             _id = id, 
                                                             _name = name;

  // Convenient Constructor (i.e. Named constructor)
  // Forwarding Constructor to the default one
  const User.anonymous() : this(id: 0);

  // Factory Constructor
  factory User.ray() {
    return User(id: 42, name: 'Ray');
  }

  // Factory Constructor, for JSON -> Model
  // Add a lot of assertion code for example 
  // https://stackoverflow.com/questions/64838782/why-use-factory-when-constructing-a-new-instance-from-a-map-structure/66117859#66117859
  // Factory Constructor: 避免被自己或者子类使用 forwarding的时候，彻底搞乱
  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}

class Password {
  final String value;

  const Password({required this.value});

  @override
  String toString() {
    return value;
  }

  bool isValid() {
    return value.length > 8;
  }
}

class Email {
  var _address = '';
  String get value => _address;
  set value(String address) => _address = address;
}

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, dart');
  }
}


// Singleton Pattern, 和 Swift 的写法一毛一样
class MySingleton {
  MySingleton._();
  static final MySingleton instance = MySingleton._();
  factory MySingleton() => instance;
}

class Student {
  final String firstName;
  final String lastName;
  final int grade;

  const Student({required this.firstName, required this.lastName, required this.grade});

  @override
  String toString() {
    return 'Student: $firstName $lastName, grade = $grade';
  }
}

class Sphere {
  final int _radius;
  Sphere({required int radius}) : assert(radius > 0), 
                                  _radius = radius;

  double get volumn => 4 / 3 * pi * _radius * _radius * _radius;
  double get area => 4 * pi * _radius * _radius;

  static final double pi = 3.14159265358;
}