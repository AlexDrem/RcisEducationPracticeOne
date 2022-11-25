import 'dart:io';
import 'dart:math';

List<int> fill(int min, int max) {
  List<int> le =
      List.generate(10, (index) => (Random().nextInt(max - min) + min));

  return (le);
}

void main() {
  print("Pishi min");
  int min = int.parse(stdin.readLineSync()!);

  print("Pishi max");
  int max = int.parse(stdin.readLineSync()!);

  List le = fill(min, max);

  for (int i = 0; i < le.length; i++) {
    stdout.write("${le[i]} ");
  }
}