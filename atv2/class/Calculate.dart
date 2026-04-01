class Calculate {
    double? _num1;
    double? _num2;
    double? _res;

    Calculate(double n1, double n2){
        this.setNum1(n1);
        this.setNum2(n2);
    }

    double getNum1(){
        return _num1!;
    }

    double getNum2(){
        return _num2!;
    }

    double getRes(){
        return _res!;
    }

    void setNum1(double n1){
        this._num1 = n1;
    }

    void setNum2(double n2){
        this._num2 = n2;
    }

    void setRes(double res){
        this._res = res;
    }
}