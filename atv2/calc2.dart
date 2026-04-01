import 'class/Operations.dart';
import 'dart:io';

void main(){
  String? n1, n2, operation;
  final RegExp regex = RegExp(r'\d+\.?\d*$');

  print("Enter with first number: ");
  n1 = stdin.readLineSync();
  print("Enter with second number: ");
  n2 = stdin.readLineSync();
  print("Enter with operation (+, -, /, x): ");
  operation = stdin.readLineSync();

  if(!regex.hasMatch(n1!) || !regex.hasMatch(n2!)){
    print("Please provider only number!");
    return;
  }

  if(operation == ""){
    print("Enter a value!");
    return;
  }

  double convertA = double.parse(n1);
  double convertB = double.parse(n2);


  Operations operations = new Operations(convertA, convertB);

  switch(operation){
    case "+":
      double s = operations.sum();
      print("SUM: ${s.toStringAsFixed(2)}");
      break;
    case "-":
      double s = operations.sub();
      print("SUB: ${s.toString()}");
      break;
    case "x":
      double m = operations.mult();
      print("MULT: ${m}");
      break;
    case "/":
      if(convertB == 0){
        print("It is not possible divide by 0!");
        return;
      }
      double d = operations.div();
      print("DIV: ${d.toStringAsFixed(2)}");
      break;
    default:
      print("Invalid Operation");
      break;
  }
}