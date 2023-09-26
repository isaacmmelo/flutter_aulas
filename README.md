<div align=''>

# Conceitos iniciais de Flutter

Aula da disciplina Programação para Dispositivos Móveis
<br />
Instituto Federal Goiano - Campus Ceres
<br />
Prof. Isaac Mendes
<br />
|Tecnologia|Versão|Descrição|Link|
|:---:|:---:|:---:|:---|
|Flutter|3.13.4|Framework|https://flutter.dev/|
|Android Studio|34.0.0|Emular Disp. Android|https://developer.android.com/studio|
|Visual Studio Code|1.82.2|IDE para desenvolvimento|https://code.visualstudio.com/|
<br />
Vídeo referência: FULL Flutter Beginner Course
<br />
Livro referência: Flutter: Programação para Android & iOS
<br />
<i>Para introdução e instalaçãodo Flutter/Dart, veja a aula em PDF.</i>
</div>

<div>

# Antes, um pouco de Dart

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


# Agora vamos com Flutter

> **💡 DICA**  
Para testar os códigos abaixo é necessario que tenha assistido a <Aula de Dart e Flutter - Colocar link> e instalado corretamente os programas mostrados. <br /><br />
Crie um novo projeto de acordo com o ensinado em sala de aula e teste os códigos abaixo no arquivo <i><b>main.dart</b></i>, substituindo os códigos necessários. <br /><br />
Caso faça uma cópia deste reposítório, você pode utilizar o projeto da pasta <i><b>exemplos_app</b></i> e substituir por completo a classe MainApp. <br /><br />
Para verificar alternaticas de método, utilizando o vscode, pressione as teclas <kbd>CTRL</kbd> + <kbd>ESPAÇO</kbd> e explore os métodos e funções alternativas

Nesta seção, irei explicar um pouco de como funciona a estrutura do Flutter. Na aula, vimos que a estrutura é totalmente orientada a <i>Widgets</i>, mas o que isso significa na prática?

## Função base do Flutter

Ao iniciar um novo projeto do Flutter, o arquivo <i>main.dart</i> irá vir com a função principal (main) já escrita, essa função chama um método chamado runApp, que irá rodar o aplicativo em si.

```dart
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

/* ----- 
  Função principal do Flutter, assim que inicarmos a depuração, será a primeira função a ser chamada.
----- */
void main() {
  /* ----- 
    runApp é a função do flutter para inicarmos um widget, este widget será carregado sempre que for chamado
  ----- */
  
  runApp(MainApp());
}
```
Para que o aplicativo funcione, precisamos implementar a função MainApp. No VSCode, digite stl e selecione a opção Flutter Statlles Widget, a IDE irá gerar automaticamente um Widget Padrão, vamos renomar para MainApp e fazer as alterações conforme o código abaixo:

```dart
/* ----- 
  Implementamos a função que é chamada na main, assim que o aplcicativo iniciar, essa função será chamada 
----- */
class MainApp extends StatelessWidget {
  MainApp({super.key});
  
  /* ----- 
    Para a primeira função, criamos um StatelessWidget, que será a base do nosso aplicativo
  ----- */
  @override
  Widget build(BuildContext context) {
    /* ----- 
      Aqui, trocamos a inicialização do nosso widget para MaterialApp, para ter o design parecido com o Android
      Podemos utilizar o design Cuppertino, para ficar basedo no iOS
      Durante as aulas, utilizaremos o modelo MaetrialApp
      Para os exemplos, removemos também a opção const
    ----- */
    return MaterialApp(
      /* ----- 
        Podemos utilizar essa configuração para remover a barra de debug da tela incial
      ----- */
      debugShowCheckedModeBanner: false,
      /* -----
        Agora, iremos iniciar nossa estrutura das páginas, para isso iniciamos primeiramente a estrutura Scaffold
        Ela servirá como um esqueleto para montarmos nosso aplicativo
        A estrutura Scaffold é inicada na tag home:, a parte inicial do aplicativo
        Dentro da Scaffold, podemos inicar outras tags, como:
          body, appBar, navBar, bottomNavigationBar, Colum, Widget dentre outrast
      ----- */
      home: Scaffold(
        /* -----
          Podemos colocar uma cor de background para a nossa estrutura, essa cor será a base de todo o aplicativo carregado nesta página
        ----- */
        backgroundColor: Colors.black,
        /* ----------------------------------------------------------------------
              !! TODOS OS CÓDIGOS ABAIXO, SERÃO IMPLEMENTADOS NESTE ESPAÇO !! 
        ---------------------------------------------------------------------- */

        /* ----------------------------------------------------------------------
              !!                  FIM DA IMPLEMENTAÇÃO                     !!                      
        ---------------------------------------------------------------------- */
      ),
    );
  }
}
```
Ao finalizar o código e rodar o emulador (<kbd>F5</kbd>), seja ele Android, Web ou Linux, irá aparecer um aplicativo com a tela em branco, isso sinifica que seu projeto está pronto para ser inciado.

## Criando uma Appbar

AppBar é um widget padrão para praticamente todos os aplicativos android, a implementação dele em Flutter é feita dentro da estrutura Scaffold, que criamos anteriormente:
```dart
/* -----
  Utilizamos a tag appBar, para construir
----- */
appBar: AppBar(
  title: Text("MainApp Bar"), //Adicionamos um título a barra
  backgroundColor: Colors.deepPurple, //Podemos mudar a cor de fundo
  elevation: 0, //Podemos tirar ou aumentar a 'sombra' da barra
  actions: [ //Ações são ícones a direita do aplicativo
    IconButton(onPressed: () {}, icon: Icon(Icons.logout))
  ], //Todos os ícones de ação irão para o lado direito
),
```
## Criando um Bottom NavBar

A Bottom Navigation Bar, é um modo eficiente e muito comum para navegar dentro de uma aplicação mobile, a implementação pode ser feita juntamente com a Appbar criado acima:
```dart
/* -----
  Utilizamos a tag bottomNavigationBar, para construir
----- */
bottomNavigationBar:
  BottomNavigationBar(
    backgroundColor: Colors.purpleAccent, //Podemos mudar a cor de fundo
    items: [ //Utilizamos a estrutura items: [] para adiconar os itens
      //Home
      BottomNavigationBarItem( //Cada item é adicionado com essa tag
        icon: Icon(Icons.home), //podemos trocar os icones
        label: 'Home', //e a label
      ),
      //Perfil
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Perfil',
      ),
      //Configurações
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Configurações',
      ),
    ]
  ),
```
## Drawer
Drawer é a barra lateral de navegação, é utilizada na maioria dos aplicativos, e pode ser combinada com a BottomNavigationBar, mas é obrigatório a utilização com a AppBar

```dart
/* -----
  O Drawer só funcina juntamente com a appBar, ou se você implementar algum outro botão para fazer a chamada dele
  Neste exemplo utilizaremos com a appBar
----- */
appBar: AppBar(
  title: Text("MainApp Bar"),
),
/* -----
  utilizamos a ancoragem drawer
----- */
drawer: Drawer(
  backgroundColor: Colors.deepPurple[100], //Podemos mudar a cor de fundo
  child: DrawerHeader( //podemos adicionar o cabeçalho como um 'filho' do Drawer
      child: Icon(
    Icons.favorite,
    size: 48,
  )),
),
```
## Implementação em conjunto da AppBar, Drawer e NavBar
Vamos implementar e fazer o teste da aplicação com todos os Widgets que aprendemos até Agora

```dart
appBar: AppBar(
  title: Text("MainApp Bar", style: TextStyle(color: Colors.white)), //Utilizamos o TextStyle para alterar o texto
  backgroundColor: Colors.deepOrangeAccent,
  elevation: 0,
  actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))], //Podemos utilizar a ação onPressed para chamar uma função
),

drawer: Drawer(
  backgroundColor: Colors.deepOrange,
  /* -----
    Para implementar os ícones em um Drawer, temos que utilizar uma ancoragem maior
    No caso abaixo utilizamos Column, que será explicada na próxima seção
  ----- */
  child: Column(children: [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile( //Utilizamos o ListTitle para podemos criar os títula e espaço de navegação
      leading: Icon(
        Icons.home,
        color: Colors.white,
      ),
      title: Text("Home", style: TextStyle(color: Colors.white)),
    ),
    ListTile(
      leading: Icon(
        Icons.person,
        color: Colors.white,
      ),
      title: Text("Perfil", style: TextStyle(color: Colors.white)),
    ),
    ListTile(
      leading: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      title:
          Text("Configurações", style: TextStyle(color: Colors.white)),
    )
  ]),
),

bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.deepOrangeAccent,
    unselectedItemColor: Colors.white, //Podemos utilizar para mudar o estilo dos itens não selecionados
    selectedItemColor: Colors.black, //Podemos utilizar para mudar o estilo dos itens selecionados
    items: [
      //Home
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: 'Home',
      ),
      //Perfil
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        label: 'Perfil',
      ),
      //Configurações
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        label: 'Configurações',
      ),
    ]),
```

## Organização da página em Flutter

O Flutter oferece algumas formas de organizarmos os nossos widgets dentro da tela do nosso aplicativo. Vamos ver alguns deles.
Todos eles são ancorados na tag </i>body: -> child:<i>
## Container
Podemos definir o Container, como um widget, que encapsula o conteúdo dentro dele, e assim podemos manipular todo o conteúdo livremente pela tela.
Neste exemplo, criamos um container centralizado com um texto no meio do container:
```dart
body: Center(
  child: Container(
    height: 300,
    width: 300,
    decoration: BoxDecoration( //Podemos utilizar a tag decoration para mudarmos a aparência do container
      color: Colors.deepPurple,
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100), //Utilizamos para mudar as magens internas do container
    child: Text(
      "Aula de Mobile",
      style: TextStyle( //Podemos utilizar o style, dentro do widget de Text para mudarmos o estilo do texto
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
```
## Colums e Rows
Colunas e Linhas são as formas mais comuns de ancorarmos os wigets na tela. As colunas é uma forma de ancoragem vertical e as linhas uma forma de ancoragem Horizontal.

Podemos fazer uma ancoragem normal e uma expandida, segue os exemplos:

### Normal

Os containers normais, são como divs do HTML, eles ocupam o espaço inicialmente definido pelos campos Height e Width

```dart
body: Column(
  mainAxisAlignment: MainAxisAlignment.center, //Podemos utilizar para alinhar horizontalmente
  crossAxisAlignment: CrossAxisAlignment.center, //Podemos utilizar para alinhar verticlamente
  children: [
    /* -----
    Primeiro Container
    ----- */
    Container(
      height: 300,
      width: 300,
      color: Colors.amber,
    ),

    /* -----
    Segundo Container
    ----- */
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    /* -----
    Terceiro Container
    ----- */
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
  ],
),
```
### Expandido

Os containers expandidos, são containers que ocupam o espaço não definido totalmente.
Por exemplo, se não definirmos o width, ele se comportará como o segundo container, se não definirmos o height ele se comportará como o terceiro container

```dart
body: Column(
  mainAxisAlignment: MainAxisAlignment.center, //Podemos utilizar para alinhar horizontalmente
  crossAxisAlignment: CrossAxisAlignment.center, //Podemos utilizar para alinhar verticlamente
  children: [
    /* -----
    Primeiro Container
    ----- */
    Container(
      height: 300,
      width: 300,
      color: Colors.amber,
    ),

    /* -----
    Segundo Container Expandido
    ----- */
    Expanded(
      child: Container(
        height: 200,
        color: Colors.red,
      ),
    ),
    /* -----
    Terceiro Container Expandido
    ----- */
    Expanded(
      child: Container(
        flex: 3
        width: 100,
        color: Colors.blue,
      ),
    ),
  ],
),
```

### Problemas
O principal problema quando trabalhamos com containers de tamanhos fixos, são os tamanhos das telas.
Se definirmos um tamanho muito grande para o container, o conteúdo não ficará visível.
Para resolver este problema, temos o widget List View e Grid View.

## List View

O list View é um mode de apresentação em forma de lista, ele mostra todos o conteúdo com uma 'barra de rolagem' infinita.

```dart
body: ListView(
  //scrollDirection: Axis.horizontal, //Direção do scrooll
  scrollDirection: Axis.vertical, //Direção do scrooll
  children: [
    /* -----
    Primeiro Container
    ----- */
    Container(
      height: 350,
      //width: 350,
      color: Colors.amber,
    ),

    /* -----
    Segundo Container
    ----- */
    Container(
      height: 350,
      //width: 350,
      color: Colors.red,
    ),
    /* -----
    Terceiro Container
    ----- */
    Container(
      height: 350,
      //width: 350,
      color: Colors.blue,
    ),
  ],
),
```

### List View Builder

Podemos utilizar o método Builder de uma ListView para criarmos listas dinâmicas, com o tamanho dos dados solicitados.

#### List View Builder Normal - fixo
Fixamos o tamanho da lista, pela propriedade itemCount

```dart
body: ListView.builder(
  itemCount: 20,
  itemBuilder: (context, index) => ListTile(
      title: Text(index.toString(),
          style: TextStyle(color: Colors.white))),
),
```

#### List View Builder Dinâmico - fixo
Fixamos o tamanho da lista, pelo array que temos para implementar

```dart
//Inserimos a lista, logo após a declaração da classe
class MainApp extends StatelessWidget {
  MainApp({super.key});

List nomes = [
    "João",
    "José",
    "Mário",
    "Caio",
    "Júlio",
    "Túlio",
    "Neto",
    "Isaac"
  ];
```
```dart
body: ListView.builder(
  itemCount: nomes.length, //utilizamos o tamanho da lista, para criarmos a view
  itemBuilder: (context, index) => ListTile(
      title: Text(nomes[index], style: TextStyle(color: Colors.white))),
),
```

## Grid View

O grid view, também é uma view infinita, mas ela funciona como tabela, é ideal para exibir produtos, posts e etc...

```dart
body: GridView.builder(
  itemCount: 64, //Tamanho da lista
  gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), //Quantidade de itens por linha
  itemBuilder: (context, index) =>
      Container(color: Colors.amber, margin: EdgeInsets.all(2)), //EdgeInsets define o tamanho do espaçamento entre cada item
)
```

# Gesture Detector
Todos os gestos que executamos com o celular, pode ser lido pelo Flutter.
Para funcionar, vamos fazer uma alteração na nossa função main, vamos mudar para:
```dart
void main() {
  /* ----- 
    runApp() é a função do flutter para inicarmos um widget, este widget será carregado sempre que for chamado
  ----- */

  runApp(MaterialApp(home: MainApp()));
}
```
Essa alterção é necessária para lançarmos notificações ou lermos alguns gestos, ela carrega toda a biblioteca do MaterialApp e lança nosso aplicativo como se gosse o home dessa biblioteca.

> **🚫 DANGER**  
Essa não é a forma correta de carregar a biblioteca, todos os widgets devem sem implementados em classes e arquivos separados, e só carregado quando necessário. Utilizaremos desta forma até aprendermos a utilizar da forma correta.

```dart
body: Center(
  child: GestureDetector(
    onTap: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Título'),
        content: const Text('Apertado!!!!'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Sair'),
            child: const Text('Sair'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'Ok'),
            child: const Text('Ok'),
          ),
        ],
      ),
    ),
    child: Container(
      height: 200,
      width: 200,
      color: Colors.amber,
      child: Center(child: Text('Aperte aqui!')),
    ),
  )),
```
# Entrada de Dados pelo usuário
A entrada de dados pelo usuário, pode ser feito através da seguinte maneira:

```dart
body: Center(
  child: Container(
    height: 350,
    width: 400,
    decoration: BoxDecoration(
      //Podemos utilizar a tag decoration para mudarmos a aparência do container
      color: Colors.deepPurple,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextField(
          controller: meuController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Digite qualquer coisa",
              filled: true,
              fillColor: Colors.white),
        ),
        ElevatedButton(
            onPressed: entradaDados, child: Text("Pressione")),
      ]),
    ),
  ),
)
```
# Navegação com o Flutter

## Rotas

</div>

# 
<div align='right'>

*built with ❤️ by Prof. Isaac Mendes*

</div>