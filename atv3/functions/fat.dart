int fat(int num){
  int aux = 1;
  for(int i = num; i > 1; i--){
    aux = aux * i;
  }
  return aux;
}