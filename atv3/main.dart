import 'dart:io';
import './functions/fat.dart';
void main(){
  String? n;
  int res;

  final RegExp regex =  RegExp(r'\d+\.?\d*$');

  print("Informe o número para calcular fatorial: ");
  n = stdin.readLineSync();


  if(!regex.hasMatch(n!)){
    print("Informe apenas numeros!");
    return;
  }

  int convertN = int.parse(n);

  res = fat(convertN);

  print("Fatorial do número $convertN é: $res");
}