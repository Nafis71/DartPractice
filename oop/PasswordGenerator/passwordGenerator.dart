import 'dart:math';

class PasswordGenerator {
  static String generateRandomPassword() {
    List<String> allAlphabets = 'abcdefghijklmnopqrstuvwxyz'.split("");
    List<int> allDigits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<String> allSpecialCharacters = ["@", "#", "%", "&"];
    List<String> password = [];
    int passwordLength = 6; // 6 * 3 = 18 characters long
    for (int i = 0; i < passwordLength; i++) {
      password.add(allAlphabets[Random().nextInt(allAlphabets.length)]);
      password.add(allDigits[Random().nextInt(allDigits.length)].toString());
      password.add(allSpecialCharacters[Random().nextInt(allSpecialCharacters.length)]);
    }
    print(password);
    return password.join();
  }
}
