import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:async';
 
void main() {
  int n = int.parse(stdin.readLineSync()!);
  int proizv = 1;
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      proizv *= i;
    }
  }
  print(proizv);
}