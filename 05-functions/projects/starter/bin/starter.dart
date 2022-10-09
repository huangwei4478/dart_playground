import 'dart:math';

void main() {
  challenge2();
  const input = 12;
  final output = compliment(input);
  print(output);
  print(fullName('first', 'last'));
  print(fullName('first', 'last', 'Doctor'));
  withinTolearance2(10, min: 1, max: 2);
  withinTolerance3(value: 23, min: 33, max: 44);
  print(youAreWonderful(name: 'huang'));
  print(youAreWonderful(name: 'name', numberOfPeople: 22));

  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  final multiply = (int a, int b) => a * b;

  Function wonderful = ({required String name, int numOfPeople = 10}) {
    return 'You are wonderful, $name, and $numOfPeople people also think so.';
  };

  print(wonderful(_name: 'huangwei', numOfPeople: 33));
  print(wonderful(_name: 'wei', numOfPeople: 309));

  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((element) {
    print(wonderful(_name: element));
  });

  int add(int a, int b) => a + b;

  print(add(1, 2));
  print(isPrime(10));
  print(isPrime(7));
}

String compliment(int number) {
  return '$number is a very nice number';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet');
}

// making parameters optional
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

// providing default values
bool withinTolearance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

// Optional Naming Parameters
bool withinTolearance2(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

// Making Naming Parameters required
bool withinTolerance3({required int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

String youAreWonderful({required String name, int numberOfPeople = 10}) {
  return 'You are wonderful, $name, $numberOfPeople people think so.';
}

void namedFunction(Function anonymousFunction) {
  // function body
}

Function namedFunction2() {
  return () {
    print('hello');
  };
}

Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

bool isPrime(int num) {
  assert(num >= 2);
  for (var i = 2; i <= sqrt(num).toInt(); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void challenge2() {
  int repeatTask(int times, int input, Function task) {
    var answer = task(input);
    for (var i = 1; i < times; i++) {
      answer = task(answer);
    }
    return answer;
  }

  final result = repeatTask(4, 2, (num number) => number * number);
  print(result);
}

