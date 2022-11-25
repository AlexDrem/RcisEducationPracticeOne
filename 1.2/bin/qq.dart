import 'dart:io';
import 'dart:math';

void main() {
  double srednee = 0;
  double summa = 0;
  int proizv = 1;
  int  dlina = 0;
  bool c = true;

  while (c) {
    int a = int.parse(stdin.readLineSync()!);

    if (a == 0) {
      c = false;
    } else {
      dlina++;
      summa += a;
      proizv *= a;

    }
  }
  srednee = (summa / dlina);

  print('Summa= $summa');
  print('Proizv= $proizv');
  print('Srednee= $srednee');
}
