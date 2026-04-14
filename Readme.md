Este repositório serve como ajuda para os estudos em dart apresentando os scripts feitos referentes as atividades repassadas nas aulas

## 📖 O que o código da Atv1 faz?

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
O que o código faz: Calculadora com `switch` que soma, subtrai, multiplica e divide. Inclui validação de números e proteção contra divisão por zero.

Conceitos praticados:
- `switch/case` com strings
- `RegExp` para validar entrada
- `double.parse()` e `toStringAsFixed(2)`
- Tratamento de erro (divisão por zero)
```

## 🔢 O que o código da Atv4 e Atv5 faz? (Fibonacci)

Estas atividades exploram a famosa **Sequência de Fibonacci** (onde cada número é a soma dos dois anteriores: 0, 1, 1, 2, 3, 5, 8...) utilizando duas abordagens lógicas diferentes em Dart.

### Atv4: Fibonacci Iterativo (Loop)
**Foco em eficiência:** Utiliza um laço `for` ou `while` para calcular a sequência. É a forma mais rápida para números grandes, pois evita o empilhamento de chamadas na memória.

* **Lógica:** Usa variáveis auxiliares para "andar" na sequência.
* **Ponto Chave:** ```dart
    for (int i = 2; i < n; i++) {
      int next = a + b;
      a = b;
      b = next;
    }
    ```

### Atv5: Fibonacci Recursivo
**Foco em conceitos matemáticos:** A função chama a si mesma para resolver o problema, dividindo-o em subproblemas menores até chegar na base ($n \leq 1$).

* **Lógica:** Baseia-se na fórmula matemática $F(n) = F(n-1) + F(n-2)$.
* **Ponto Chave:**
    ```dart
    int fibonacci(int n) {
      if (n <= 1) return n; // Caso base
      return fibonacci(n - 1) + fibonacci(n - 2); // Chamada recursiva
    }
    ```

---

### Comparativo das abordagens:

| Atividade | Método | Vantagem | Complexidade |
| :--- | :--- | :--- | :--- |
| **Atv4** | Iterativo (`for`) | Mais rápido e gasta menos memória. | Linear |
| **Atv5** | Recursivo | Código mais limpo e elegante (declarativo). | Exponencial |

```markdown
O que os códigos fazem: Calculam a sequência de Fibonacci. A Atv4 foca em performance com loops, enquanto a Atv5 demonstra o conceito de funções que chamam a si mesmas.

Conceitos praticados:
- Estruturas de repetição (`for`/`while`)
- Recursividade e Caso Base
- Lógica matemática aplicada à programação
- Performance e gerenciamento de pilha (stack)
```