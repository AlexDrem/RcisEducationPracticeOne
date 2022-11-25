import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

List<int> transforming(String bub_0) {
  
  List<int> a = []; 
  String bub = ""; 
  bool m = true; 

  for (int i = 0; i < bub_0.length; i++) {
    
    while (bub_0[i] != " " && m) {
      
      bub += bub_0[i];
      if (i < bub_0.length - 1) {
       
        i++; 
      } else {
        m = false; 
      }
    }
    a.add(int.parse(bub)); 
    bub = ""; 
  }
  return (a);
}

void main() async {
  //var list = [1, 9, 6, 7, 4, 8, 5];
  final file = File('height.txt');

  Stream<String> lines = file
      .openRead() 
      .transform(utf8.decoder) 
      .transform(LineSplitter()); 
  List<String> ai = []; 
  await for (var line in lines) {
   
    ai.add(line); 
  }
  var list = transforming(ai[0]);
  int index1 = 0;
  int index2 = 0;
  int volume = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 1 + i; j < list.length; j++) {
      int visot = list[i] < list[j] ? list[i] : list[j];
      int lenght = j - i;
      if (volume < visot * lenght) {
        volume = visot * lenght;
      }
    }
  }
  print(volume);
}