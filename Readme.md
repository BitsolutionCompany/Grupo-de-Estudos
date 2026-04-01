Este repositório serve como ajuda para os estudos em dart apresentando os scripts feitos referentes as atividades repassadas nas aulas

## 📖 O que este código faz?

**É uma calculadora simples no terminal** que:
1. Pede dois números
2. Pede a operação (`+`, `-`, `/`, `x`)
3. Faz o cálculo usando `switch/case`
4. Mostra o resultado com 2 casas decimais

### Fluxo passo a passo:

```
Entrada: 10 + 5
↓
Valida números ✓
↓
switch("+") → res = 10 + 5 = 15.00
↓
Saída: "Sum: 15.00"
```

### Pontos importantes do código:

```dart
// 1. VALIDAÇÃO: só aceita números inteiros
final RegExp regex = RegExp(r'^[0-9]+$');
if (!regex.hasMatch(a!)) → "Please provide only numbers."

// 2. SWITCH faz a "mágica":
switch(operation){
  case "+": res = a + b; break;  // Soma
  case "x": res = a * b; break;  // Multiplicação
  case "/": 
    if(b == 0) "Não divide por zero!" // Segurança!
    else res = a / b;
    break;
  default: "Operação inválida!"
}
```

### Exemplo de uso:
```
Enter first number: 25
Enter second number: 4  
Enter operation(+, -, /, x): x
Mult: 100.00 ✅
```

```markdown
**O que o código faz**: Calculadora com `switch` que soma, subtrai, multiplica e divide. Inclui validação de números e proteção contra divisão por zero.

**Conceitos praticados**:
- `switch/case` com strings
- `RegExp` para validar entrada
- `double.parse()` e `toStringAsFixed(2)`
- Tratamento de erro (divisão por zero)
```