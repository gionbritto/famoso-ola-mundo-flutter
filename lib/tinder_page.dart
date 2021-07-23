/*
passos:
1 - criar um stateful widget
2 - criar meu widget build usando o widget scafold como principal
3 - construir os elementos
4 - separar o body principal em uma classe (no mesmo arquivo)
*/

import 'package:flutter/material.dart';

class TinderPage extends StatefulWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  _TinderPageState createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  Widget _body() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 100,
                width: 100,
                child: Image.asset('/images/logo.png')),
            SizedBox(height: 30),
            Text(
              'Location Changer',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            Container(height: 20),
            Text(
              'Plugin app for Tinder',
              style: TextStyle(
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 45),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.00),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25, bottom: 12, top: 12),
                child: const Text(
                  'Login with Facebook',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle style = ElevatedButton.styleFrom(
    //     onPrimary: Colors.white, textStyle: const TextStyle(fontSize: 18));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red.shade400,
          ),
          _body()
        ],
      ),
    );
  }
}
