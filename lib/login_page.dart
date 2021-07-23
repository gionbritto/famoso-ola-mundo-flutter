import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      // vai dar um scroll para qualquer coisa que estiver aqui dentro
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // width: double.infinity,
        // height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 170,
                height: 170, //a imagem herda o tamanho
                // child: Image.network(
                //     'https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png'),
                child: Image.asset(
                    '/images/logo.png'), //os arquivos estaticos tempos que declarar no pubspecs
              ),
              Container(height: 20),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 20, bottom: 12),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () {
                          if (email == 'teste@teste.com' && password == '123') {
                            print('correto');
                            //empurrando uma rota para navegacao manual
                            // Navigator.of(context).pushReplacement(
                            //     //chama o home e esquece a outra
                            //     MaterialPageRoute(builder: (context) => HomePage()));

                            //automatica
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('login invalido');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('/images/tijolo-background.jpg',
                fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.4),
        ),
        _body()
      ],
    ));
  }
}
