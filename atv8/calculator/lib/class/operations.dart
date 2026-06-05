import 'calculate.dart';

class Operations extends Calculate{
  Operations(super.n1, super.n2);

  double sum(){
    double r = getNum1() + getNum2();
    setRes(r);
    return getRes();
  }

  double sub(){
    double r = getNum1() - getNum2();
    setRes(r);
    return getRes();
  }

  double mult(){
    double r = getNum1() * getNum2();
    setRes(r);
    return getRes();
  }

  double div(){
    if (getNum2() == 0) {
      throw Exception("Não é possivel dividir por 0!");
    }
    double r = getNum1() / getNum2();
    setRes(r);
    return getRes();
  }

  @override
  void test(){
    print("Teste 2");
  }
} 