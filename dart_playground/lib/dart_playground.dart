int calculate() {
  return 6 * 7;
}

void listPlayground() {
  List samples = [
    'Won',
    'Jihjun',
    'Wonhee',
    'Sunghun',
  ];

  samples.insert(2, 'test');
  print(samples);
}

// dart-list-enumeration-with-index
// https://github.com/vandadnp/flutter-tips-and-tricks/blob/main/tipsandtricks/dart-list-enumeration-with-index/dart-list-enumeration-with-index.md

const value = [
  'Won',
  'Jihjun',
  'Wonhee',
  'Sunghun',
];

String? insteadOfThis() {
  for (var i = 0; i < value.length; i++) {
    print('$value[i] is index is $i');
    if (i == 2) {
      return value[2];
    }
  }
  return null;
}

String? doThisEnum() {
  String? secondValue;
  value.asMap().forEach(
    (key, value) {
      print('$value is index $key');
      if (key == 2) {
        secondValue = value;
      }
    },
  );
  return secondValue;
}

// Enum Associated Values in Dart
enum AnimalType { dog, cat, parrot }

extension Index on AnimalType {
  int get values => AnimalType.values.indexOf(this);
}

extension Name on AnimalType {
  static final value = {
    AnimalType.dog: 'dog',
    AnimalType.cat: 'cat',
    AnimalType.parrot: 'parrot',
  };

  String get values => values[AnimalType.values.indexOf(this)];
}
