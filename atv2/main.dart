import 'dart:io';
import './functions/calc.dart';

void main(){
  String? a, b, operation;
  double res;
  final RegExp regex =  RegExp(r'\d+\.?\d*$');

  print("Enter with first number: ");
  a = stdin.readLineSync();
  print("Enter with second number: ");
  b = stdin.readLineSync();
  print("Enter with operation(+, -, x, /): ");
  operation = stdin.readLineSync();

  if(operation == ""){
    print("Enter a value!");
    return;
  }

  if(!regex.hasMatch(a!) || !regex.hasMatch(b!)){
    print("Please provider only number!");
    return;
  }

  double convertA = double.parse(a);
  double convertB = double.parse(b);

  switch(operation){
    case "+":
      res = sum(convertA, convertB);
      print("Sum: ${res.toStringAsFixed(2)}");
      break;
    case '-':
      res = sub(convertA, convertB);
      print("SUb: ${res.toStringAsFixed(2)}");
      break;
    case '/':
      if(convertB == 0){
        print("It is possible divide by 0!");
        return;
      }
      res = div(convertA, convertB);
      print("Div: ${res.toStringAsFixed(2)}");
      break;
    case "*":
      res = mult(convertA, convertB);
      print("Mult: ${res.toStringAsFixed(2)}");
      break;
    default:
      print("Invalid Operation!");
      break;
  }
}
