import 'dart:io';
import 'dart:math';

void main() {
  int chtoto = int.parse(stdin.readLineSync()!);
  List<List<int>> 
  list = List.generate(chtoto, (i) => List.generate(chtoto, (j) => 1));

  for (int i = 1; i < chtoto; i++) {
    for (int j = 1; j < chtoto; j++) {
      list[i][j] = list[i - 1][j] + list[i][j - 1];
    }
  }
  for (int i = 0; i < chtoto; i++) {
    for (int j = 0; j < chtoto; j++) {
      if (list[i][j].toString().length == 1) {
        stdout.write(" ${list[i][j]}  ");
      } else{ stdout.write("${list[i][j]}  ");}
    }
    print("");
  }
}