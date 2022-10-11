import 'dart:math';

void main() {
  final result = randomNothing() ?? 0;
  print(result);
}

int? randomNothing() {
  if (Random().nextBool()) {
    return 42;
  } else {
    return null;
  }
}

class Name {
  String givenName;
  String? surname;
  bool surnameIsFirst;

  Name({required this.givenName, this.surname, this.surnameIsFirst = false});

  @override
  String toString() {
    if (surnameIsFirst) {
      return (surname ?? '') + ' ' + givenName;
    } else {
      return givenName + ' ' + (surname ?? '');
    }
  }
}
