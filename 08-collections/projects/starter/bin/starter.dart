void main() {
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];

  List<String> months = [];
  months.add('January');
  months.add('Feburary');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('Auguest');
  months.add('September');
  months.add('November');
  months.add('October');
  months.add('December');

  // 这种写法有点像 python
  final bigMonths = [ for (var month in months) month.toUpperCase() ];
  print(bigMonths);
  
  final info = <String, Object>{};
  info['name'] = 'isaiah';
  info['country'] = 'China';
  info['city'] = 'Shenzhen';

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores);
  print(scores.first);
  print(scores.last);
}

List<String> uniqueRequest(String text) {
  final words = text.split(' ');
  final uniqueWord = <String>{ ...words };
  return uniqueWord.toList();
}

Map<String, int> countingFreqRequest(String text) {
  final words = text.split(' ');
  var freq = <String, int>{};
  for (var word in words) {
    final frequency = freq[word];
    freq[word] = frequency == null ? 0 : frequency + 1;
  }
  return freq;
}

class User {
  final int id;
  final String name;

  User({ required this.id, required this.name });
}

List<Map<String, Object>> mappingUsers(List<User> users) {
  final mapList = <Map<String, Object>>[];
  for (var user in users) {
    final userMap = {
      'id': user.id,
      'name': user.name
    };

    mapList.add(userMap);
  }

  return mapList;
}