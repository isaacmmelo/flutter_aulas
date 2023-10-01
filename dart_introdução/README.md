# Um pouco de Dart

> **💡 DICA**  
Você pode utilizar o site https://dartpad.dev/ para rodar os códigos abaixo

## Variáveis
Para declarar uma variável no dart, utilizamos:
```TIPO nome = valor;```
```dart
void main() {
  //Variável do tipo String
  String nome = "Isaac Mendes";
  //Variável do tipo Int
  int idade = 29;
  //Variável do tipo double (números decimais)
  double pi = 3.14159;
  //Variável do tipo booleano
  bool eUmaAula= true;
}
```

## Operadores Básicos

Utiliamos os operadores matemáticos para executar as operações básicas aritméticas.

```dart
void main() {
  //Declara duas variáveis do tipo inteiro para as operações
  int a = 1;
  int b = 2;
  //Realiza as operações armazenando em uma variável
  int adicao = a + b;
  int subtracao = a - b;
  int multiplicacao = a * b;
  double divisao = a / b;
  int resto = a % b;

  //Imprime o tipo de operação, o operador e o resultado
  print("Operações com os números $a e $b");
  print("Adição: $a + $b = $adicao");
  print("Subtração: $a - $b = $subtracao");
  print("Multiplicação: $a * $b = $multiplicacao");
  print("Divisão: $a / $b = $divisao");
  print("Resto de $a % $b = $resto");
  print("Incrementador (soma 1): $a++");
  a++;
  print("Valor da variável a após incrementar: $a");
  print("Decrementador (subtrai 1): $b--");
  b--;
  print("Valor da variável b após decrementar: $b");
}
```
Saída no console da aplicação:
```
Operações com os números 1 e 2
Adição: 1 + 2 = 3
Subtração: 1 - 2 = -1
Multiplicação: 1 * 2 = 2
Divisão: 1 / 2 = 0.5
Resto de 1 % 2 = 1
Incrementador (soma 1): 1++
Valor da variável a após incrementar: 2
Decrementador (subtrai 1): 2--
Valor da variável b após decrementar: 1
```

## Operadores de comparação
Utilizamos os operadores de compração para comprar variáveis
```dart
void main() {
  bool a = false;
  a = 5 == 5;
  print("5 Igual a 5; $a");
  a = 5 != 4;
  print("5 Diferente de 5; $a");
  a = 5 > 4;
  print("5 Maior que 4; $a");
  a = 4 < 5;
  print("4 Menor que 5; $a");
  a = 5 >= 5;
  print("5 Maior ou igual que 5; $a");
  a = 5 <= 4;
  print("5 Menor ou igual que 4; $a");
} 
```
Saída no console da aplicação:
```
5 Igual a 5; true
5 Diferente de 5; true
5 Maior que 4; true
4 Menor que 5; true
5 Maior ou igual que 5; true
5 Menor ou igual que 4; false
```
## Operadores Lógicos
Os operadores lógicos são utilizados para comprar operações:
   - Operador e (&&) = Ambos as condições precisam ser verdadeiras
   - Operador ou (||) = Somente uma condição precisa ser verdadeira
   - Operador negação, não é (!) = Nega uma operação (inverso)
```dart
void main() {
  bool a = 5 == 5 && 5 != 4;
  print("5 igual a 5 e 5 diferente de 4; $a");
  a =  5 == 5 || 5 != 5;
  print("5 igual a 5 ou 5 diferente de 5; $a");
  a = !true;
  print('negação de true; $a');
} 
```
Saída no console da aplicação:
```
5 igual a 5 e 5 diferente de 4; true
5 igual a 5 ou 5 diferente de 5; true
negação de true; false
```

## Statments - Controle de fluxo

### If e Else
Os statments IF e ELSE podem ser utilizados para ditar o fluxo de acordo com uma condição.
Se a condição for atendidada, faça algo, se não faça outra coisa.
```dart
void main() {
  int a = 1;
  if (a == 1){
    print("A variável é igual a Um");
  } else if (a == 2){
    print("A variável é igual a Dois");
  } else {
    print("A variável não é Um nem Dois");
  }
} 
```
Saída no console da aplicação:
```
A variável é igual a Um
```
### Switch e Case
O statment Switch, serve para compararmos diferentes cenários e executarmos ações
```dart
void main() {
  int a = 1;
  
  switch (a) {
    case 1:
        print("Um");
      break;
      
    case 2:
        print("Dois");
      break;
  
    case 3:
        print("Três");
      break;
      
    default:
        print("Não definido");
      break;
  }
} 
```
Saída no console da aplicação:
```
Um
```

### Loops - Repetição
Laços de repetição são utilizados para reptir ações durante um determinado número de passos, ou até uma condição ser alterada

#### For
O for necessita de um inicializador, de uma condição e de um incrementador
```
for (iniciador; condição; interação){
  faça enquanto o indicador não atingir a condição, incrementando e acordo com a interação;
}
```
```dart
void main() {
  for (int i = 0; i <= 5; i++){
    print(i);
  }
} 
```
Saída no console da aplicação:
```
0
1
2
3
4
5
```
#### While
O while, diferente do for, necessira apenas de uma condição para ser executado enquanto a condição permanecer inalcançada
```
while (condição){
  enquanto a condição for verdadeira, faça isso;
}
```
```dart
void main() {
  int i = 0;
  while (i <= 5){
    print(i);
    i++;
  }
} 
```
Saída no console da aplicação:
```
0
1
2
3
4
5
```
#### Break e Continue
São operadores que interrompem o fluxo, ou pausam em uma determinada condição e continua após a pausa
<br />
Break

```dart
void main() {
  int i = 0;
  while (i <= 5){
    print(i);
    
    //Utilizaremos o break, para parar a repetição quando o valor de i for igual a 3
    if(i == 3) {
      break;
    }
    
    i++;
  }
} 
```
Saída no console da aplicação:
```
0
1
2
3
```
<br />
Continue

```dart
void main() {
  int i = 0;
  while (i <= 10){
        
    //Utilizaremos o continue, para parar pular os comandos abaixo do if
    if(i % 2 == 0) {
      print("É par");
      i++;
      continue;
    }
    
    print(i);    
    i++;
  }
}
```
Saída no console da aplicação:
```
É par
1
É par
3
É par
5
É par
7
É par
9
É par
```

## Funções/Métodos

Utilizamos as funções e métodos, para 'salvar' alguma operação e utiliza-la a qualquer momento dentro do software. Declaramos uma função da seguinte forma:

```
retorno nome da função(argumentos) {
  comandos;
} 
```

<br />Exemplos de uma função para imprimir uma frase:

```dart
void main() {
  //Declaramos uma função do tipo VOID, para imprimir uma frase
  //O tipo Void indica que não retornará nada, apenas executará um comando
  void ola(){
    print("Olá, seja bem vindo.");
  }
  //Chamamos a função
  ola();
}
```
Saída no console da aplicação:
```
Olá, seja bem vindo.
```
<br />Exemplo de uma função que recebe um nome e o imprime juntamente com uma frase

```dart
void main() {
  //Definimos uma variável nome do tipo String
  String nome = "João";

  //Definimos uma função do tipo Void, que recebe como parâmetro uma variável do tipo String
  void olaPessoa(String nome) {
    print("Olá $nome, seja bem vindo.");
  }

  //Chamamos a variável e passamos como argumento um variável do tipo String
  olaPessoa(nome);
}
```
Saída no console da aplicação:
```
Olá João, seja bem vindo.
```
<br />Exemplo de uma função que recebe dois parâmetros inteiros, soma e retonar o resultado da soma
```dart
void main() {
  //Declaramos uma função do tipo Inteiro que recebe dois parâmetros inteiros
  int somar(int a, int b) {
    int soma = a + b;
    //Essa função retorma uma variável do tipo inteiro
    return soma;
  }
  //Chamamos a função dentro de uma variável do mesmo tipo, para armazenar o seu retorno
  int soma = somar(1, 2);
  print(soma);
}
```
Saída no console da aplicação:
```
3
```
## Estrutura de dados

Estrutura de dados são <i>Statments</i> dentro de uma linguagem para o armazenamento e manipulação de informações.

### Lista
Para declararmos uma lista, utilizamos a seguinte estrutura:

```List<tipo> variavel = [dados]```

<br />Exemplo de uma lista numérica com 03 valores: 1, 2 e 3
```dart
void main() {
  //Declaramos uma lista do tipo inteiro, chamada numeros, que recebe 3 valores
  //Cada valor é identificado por um index, começando no 0, assim temos:
  //numeros[0] = 1
  //numeros[1] = 2
  //numeros[2] = 3
  List<int> numeros = [1, 2, 3];

  void imprimeNumeros() {
    //Para imprimir uma lista temos que realizar um laço de repetição para percorrer cada um dos index
    for (int i = 0; i < numeros.length; i++) {
      print(numeros[i]);
    }
  }

  imprimeNumeros();
}
```
Saída no console da aplicação:
```
1
2
3
```
<br />Exemplo de uma lista de caracter com três valores; João, José e Mário

```dart
void main() {
  //Declaramos uma lista do  tipo String que recebeu 03 valores
  List<String> nomes = ['João', 'José', 'Mário'];

  void imprimeNomes() {
    //Utilizamos a opção NOMEDALISTA.length para pegar o tamanho, quantidade de itens na lista
    for (int i = 0; i < nomes.length; i++) {
      print(nomes[i]);
    }
  }

  imprimeNomes();
}
```
Saída no console da aplicação:
```
João
José
Mário
```

### Map
De uma forma simples, podemos dizer que o Map é lista com os índices nomeáveis, declaramos da seginte forma:
```
Map nomeDoMap = {
  'nomeDoIndice': 'Dados',
  'nomeDoIndice': 'Dados',
  ...
  'nomeDoIndice': 'Dados',
}
```
Exemplo em Dart
```dart
void main() {
  //Aqui declaramos um Map com o nome usuário e alguns índices
  Map usuario = {
    'nome': "Isaac",
    'email': "email@email.com.br",
    'senha': "123456",
  };
  //Para imprimir, utilizamos o nome do índice declaro e não o número da sequência
  print(usuario['nome']);
  print(usuario['email']);
  print(usuario['senha']);
}
```
Saída no console da aplicação:
```
Isaac
email@email.com.br
123456
```
</div>

<div>

# 
<div align='right'>

*built with ❤️ by Prof. Isaac Mendes*

</div>