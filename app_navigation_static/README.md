# Exemplo de navegação por rotas em Flutter

Neste aplicativo iremos aprender o método de navegação por meio de rotas.
<br/>
Neste aplicativo teremos a seguinte estrutura de páginas:
 - HomePage<br/>
 - IntroPage<br/>
 - ConfigPage<br/>
 - ProfilePage<br/>
<br/>
As navegações ocorrem pelo Drawer (lib/components/my_drawer.dart)<br/>

## Configurando rotas
As rotas são configuradas no arquivo main.dart, na construção do MaterialApp
```dart
 routes: {
        '/homepage': (context) => const HomePage(),
        '/intropage': (context) => const IntroPage(),
        '/config': (context) => const ConfigPage(),
        '/profile': (context) => const ProfilePage(),
      },
```
Nesta configuração podemos colocar todas as rotas disponíveis no nosso aplicativo

## Navegando através das rotas
Para navegas através das rotas, utilizamos o widget Navigator
Veja um exemplo disponíevl no arquivo my_drawer.
```dart
  Navigator.pushNamed(context, '/homepage');
```