/*
Roman numerals are usually written largest to smallest from left to right.
However, the numeral for four is not IIII.
Instead, the number four is written as IV.
Because the one is before the five we subtract it making four.
The same principle applies to the number nine, which is written as IX
 */

int romanToInt(String s){
  int answer = 0;
  Map<String,int> romanMap = {};
  romanMap['I'] = 1;
  romanMap['V'] = 5;
  romanMap['X'] = 10;
  romanMap['L'] = 50;
  romanMap['C'] = 100;
  romanMap['D'] = 500;
  romanMap['M'] = 1000;
  int size = s.length;
  for(int i=0;i<size;i++) {
    if (i < size - 1 && romanMap[s[i]]! < romanMap[s[i + 1]]!) {
      answer -= romanMap[s[i]]!;
    } else {
      answer += romanMap[s[i]]!;
    }
  }
  return answer;
}

main(){
  String s = "MCMXCIV";
  print(romanToInt(s));
}