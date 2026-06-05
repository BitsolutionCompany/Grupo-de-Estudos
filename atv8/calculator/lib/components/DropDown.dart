import 'package:flutter/material.dart';

const List<String> operations = <String>['Operação','Somar', 'Dividir', 'Subtrair', 'Multiplicar'];

class DropdownButtonApp extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const DropdownButtonApp({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButtomExample(onChanged: onChanged),
    );
  }
}

class DropdownButtomExample extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const DropdownButtomExample({super.key,required this.onChanged});

  @override
  State<DropdownButtomExample> createState() => _DropdownButtomExampleState();
}

class _DropdownButtomExampleState extends State<DropdownButtomExample> {
  String dropdownValue = operations.first;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue.shade800,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white24),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
          elevation: 8,
          style: TextStyle(
            color: Colors.white, 
            fontSize: 16, fontWeight: 
            FontWeight.bold
          ),
          dropdownColor: Colors.blue.shade900,
          onChanged: (String? value){
            if(value != null){
              setState(() {
                dropdownValue = value;
              });
              widget.onChanged(value);
            }
          },
          items: operations.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value, 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(value),
              )
              );
          }).toList(),
        )
        ),
    );
  }
}