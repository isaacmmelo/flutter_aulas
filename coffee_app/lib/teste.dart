
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("MainApp Bar", style: TextStyle(color: Colors.white)), //Utilizamos o TextStyle para alterar o texto
        backgroundColor: const Color.fromARGB(132, 255, 109, 64),
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))], //Podemos utilizar a ação onPressed para chamar uma função
      ),

      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 69, 7, 1),
        /* -----
          Para implementar os ícones em um Drawer, temos que utilizar uma ancoragem maior
          No caso abaixo utilizamos Column, que será explicada na próxima seção
        ----- */
        child: Column(children: [
          DrawerHeader(child: Icon(Icons.coffee)),
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

          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Column(
                children: [

                  Row(
                    children: [
                      Container(
                        width: 135,
                        height: 135,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 97, 90, 70)
                        ),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 80, 64, 13)
                        ),
                      ),

                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.amber
                        ),
                      ),
                    ],
                  ),


                    SizedBox(height: 10,),

                   Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red
                        ),
                      ),

                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red
                        ),
                      ),
                    ],
                  ),

                ],
              )
            ),
          ),


          );
  }
}