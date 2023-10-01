
# Dicas Iniciais do Flutter

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