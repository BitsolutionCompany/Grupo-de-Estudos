import 'package:flutter/material.dart';
import 'DropDown.dart';
import './../class/operations.dart';

class FormBuild extends StatefulWidget {
  const FormBuild({super.key});

  @override
  State<FormBuild> createState() => _FormBuildState();
}

class _FormBuildState extends State<FormBuild> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();

  String _option = 'Operação';

  @override
  void dispose(){
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  final _inputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade700,
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller1,
                        decoration: _inputDecoration.copyWith(hintText: "Nº 1"),
                        keyboardType: TextInputType.number,
                        validator: (String? value){
                          if(value == null || value.isEmpty){
                            return 'Input is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    DropdownButtonApp(
                      onChanged: (newOperation){
                        _option = newOperation;
                      },
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: controller2,
                        decoration: _inputDecoration.copyWith(hintText: "Nº 2"),
                        validator: (String? value){
                          if(value == null || value.isEmpty){
                            return 'Input is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const .symmetric(vertical: 16.0),
                  child: SizedBox(
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          double num1 = double.parse(controller1.text);
                          double num2 = double.parse(controller2.text);

                          if(_option.toLowerCase() == 'operação'){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Selecione a operação!"),
                                backgroundColor: Colors.redAccent,
                                behavior: SnackBarBehavior.floating,
                              )
                            );

                            setState(() {
                              controller3.text = "";
                            });
                            return;
                          }
                          Operations operation = Operations(num1, num2);

                          double s = 0.0;

                          if(_option.toLowerCase() == "somar"){
                            s = operation.sum();
                            setState(() {
                              controller3.text = s.toStringAsFixed(2);
                            });
                          }else if(_option.toLowerCase() == "dividir"){
                            try {
                              s = operation.div();
                              setState(() {
                                controller3.text = s.toStringAsFixed(2);
                              });
                            } catch (e) {
                              setState(() {
                                controller3.text = e.toString().replaceFirst('Exception: ', '');
                              });
                            }
                          }else if(_option.toLowerCase() == "subtrair"){
                            s = operation.sub();
                            setState(() {
                              controller3.text = s.toStringAsFixed(2);
                            });
                          }else if(_option.toLowerCase() == "multiplicar"){
                            s = operation.mult();
                            setState(() {
                              controller3.text = s.toStringAsFixed(2);
                            });
                          }
                        }
                      },
                      child: Text(
                        'Calcular'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: .italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsGeometry.only(top: 10.0),
                  child: TextFormField(
                    textAlign: .center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: .bold
                    ),
                    controller: controller3,
                    readOnly: true,
                    decoration: _inputDecoration.copyWith(
                      hintText: "Resultado",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            )
            ),
        ),
      ),
    );
  }
}