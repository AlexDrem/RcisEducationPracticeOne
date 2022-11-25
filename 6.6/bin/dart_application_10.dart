import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
List<double> a = [2.8,4.2,1.2,-5,3,-2.9,-1,4];
List<double> b = [];
List<double> c = [];
for(int i = 0 ; i<a.length;i++){
if(a[i]>=0) {
b.add(a[i]);
} else{c.add(a[i]);}
}
print(b);
print(c);
}