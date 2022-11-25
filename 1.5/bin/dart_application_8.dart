import 'dart:io';
import 'dart:math';

void main() {
  String str = stdin.readLineSync()!;

  int clovo = 1;

  bool a = false;

  for (int i = 0; i < str.length; i++) {
    if (str[i] != " ") {
      a = true;
      
    } else if (str[i] == " " && a) {
      clovo++;
    }
  }

  if (a) {
    str = "start" + str + "end";
    print(clovo);
    print(str);
  } 
}