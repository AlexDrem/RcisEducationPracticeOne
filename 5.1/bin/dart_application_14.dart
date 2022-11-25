import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main() async {
final file = File('numsTask1.txt');
String nums_txt = "";
Stream<String> lines = file
.openRead()
.transform(utf8.decoder)
.transform(LineSplitter()); 
try {
await for (var line in lines) {
nums_txt += line;
}
} catch (e) {
print('Error: $e');
}
List<int> ai = [];
String vrem = "";
for (int i = 0; i < nums_txt.length; i++) {
if (nums_txt[i] != " ") {
vrem += nums_txt[i];
}
if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
ai.add(int.parse(vrem));
vrem = "";
}
}
int min = ai.first;
int minimum = 0;
int answer = 1;
bool r = true;
for(int i = 0; i<ai.length;i++){
if(ai[i]<min){
min = ai[i];
minimum=i;
}
}
for(int i = minimum +1;i<ai.length;i++){
answer *= ai[i];
r = false;
}
if(r){
print("Цифр больше нет!!!!!!!");
} else{
print(answer);
}
}