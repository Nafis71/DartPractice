import 'dart:io';

Map<String, String> getFrequencyList(List<String> numbers) {
  Map<String, String> frequencyList = {};
  for (String number in numbers) {
    if (number == "") continue;
    frequencyList.update(
      number,
      (value) => (int.parse(value) + 1).toString(),
      ifAbsent: () => "1",
    );
  }
  Map<String, String> sortedMap = Map.fromEntries(
    frequencyList.entries.toList()
      ..sort(
        (firstEntry, secondEntry) => firstEntry.value.compareTo(
          secondEntry.value,
        ),
      ),
  );
  return sortedMap;
}

main() {
  int inputLength = int.parse(stdin.readLineSync()!);
  String inputs = stdin.readLineSync()!;
  List<String> numbers = inputs.split(" ");
  Map<String, String> frequencyList = getFrequencyList(numbers);
  print(frequencyList.length);
  frequencyList.forEach(
    (key, value) {
      print("$key $value");
    },
  );
}
