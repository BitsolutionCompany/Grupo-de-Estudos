import 'dart:io';
import './functions/fibonacci.dart';

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

  fibonnaci(convertN);
}