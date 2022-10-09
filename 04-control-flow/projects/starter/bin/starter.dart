// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

/// Here is the emoji you'll use in the lesson today for your cut-and-paste
/// convenience:
/// 
/// ❤
void main() {
  // challenge
  const n = 10;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done++;
  }
  print('Fibonacci number $n is $current');


  // mini-exercises
  const myAge = 29;
  const isTeenager = myAge <= 18;
  print(isTeenager);

  const maryAge = 30;
  const bothTeenagers = myAge <= 18 && maryAge <= 18;

  var counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  const numbers = [1, 2, 3, 4, 5];
  for (var number in numbers) {
    print(number);
  }

  numbers.forEach((element) { print(element); });
}