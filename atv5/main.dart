  import 'dart:io';
  import '../atv4/functions/fibonacci.dart';
  import './functions/fibonacciRecursive.dart';

  void main(){
    String? n;
    RegExp regex = RegExp(r'\d+\.?\d*$');

    print("Enter one number: ");
    n = stdin.readLineSync();

    if(!regex.hasMatch(n!)){
      print("Please Provider Only Numbers!");
      return;
    }

    int convertN = int.parse(n);


    for (int i = 0; i < convertN; i++) {
      print("${recursive(i)}");
    }
  }