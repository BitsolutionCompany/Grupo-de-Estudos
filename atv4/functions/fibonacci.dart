void fibonnaci(int n){
  int a, b, i, s;

  a = 0;
  b = 1;

  print("\n\n$a");
  for(i = 1; i < n; i++){
    s = a + b;
    a = b;
    b = s;

    print(a);
  }
}