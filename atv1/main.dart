import "dart:io";

void main(){

  String? a, b, operation;
  double res;
  print("Enter with first number: ");
  a = stdin.readLineSync();
  print("Enter with second Number: ");
  b = stdin.readLineSync();
  print("Enter with operation(+, -, /, x): ");
  operation = stdin.readLineSync();
  final RegExp regex = RegExp(r'^[0-9]+$');

  if (!regex.hasMatch(a!) || !regex.hasMatch(b!)){
    print("Please provide only numbers.");
    return;
  }

  if(operation == "" ) {
    print("Enter a value!");
    return;
  }

  double convertA = double.parse(a);
  double convertB = double.parse(b);

  switch(operation){
    case "+":
      res = convertA + convertB;
      print("Sum: ${res.toStringAsFixed(2)}");
      break;

    case "-":
      res = convertA - convertB;
      print("Sub: ${res.toStringAsFixed(2)}");
      break;

    case "/":      
      if(convertB == 0){
        print("It is not possible divide by 0!");
        return;
      }
      res = convertA / convertB;
      print("Div: ${res.toStringAsFixed(2)}");
      break;

    case "x":
      res = convertA * convertB;
      print("Mult: ${res.toStringAsFixed(2)}");
      break;

    default:
      print("Invalid Operation!");
      break;
  }
}