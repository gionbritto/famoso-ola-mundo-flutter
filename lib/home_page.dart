import 'package:flutter/material.dart';
import 'package:ola_mundo/app.controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//classe para o estado da home page
//posso alterar algumas coisas enquanto o app estiver rodando
//GestureDetector: detecta quando há um clique em ciama do texto
class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  //ou ClipOval
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/24881679?v=4'),
                ),
                accountName: Text('Giovanne'),
                accountEmail: Text('teste@teste.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logut'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()], //botoes que ficam na lateral direita
      ),
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          //ListView(
          scrollDirection: Axis.vertical,
          // mainAxisAlignment: MainAxisAlignment.center, //para todos os mais
          //crossAxisAlignment:
          //CrossAxisAlignment.start, //estica cada um dos filhos
          children: [
            Text('Contador: $counter'),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      // body: Container(
      //   height: 200,
      //   width: 200,
      //   color: Colors.black,
      //   child: Center(
      //     child: Container(
      //       //ele herda do pai, entao ele tampou o bloco preto
      //       height: 90,
      //       width: 90,
      //       color: Colors.green,
      //     ),
      //   ),
      // ),
      // Center(
      //     child: GestureDetector(
      //   child: Text(
      //     'Contador: $counter',
      //     style: TextStyle(fontSize: 20),
      //   ),
      //   onTap: () {
      //     setState(() {
      //       //digo q estou mudando o estado, coloca tudo que vc vai modificar aqui dendtro
      //       counter++;
      //     });
      //   },
      // )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            //digo q estou mudando o estado, coloca tudo que vc vai modificar aqui dendtro
            counter++;
          });
        },
      ), //inicializa um action button pra miom
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
