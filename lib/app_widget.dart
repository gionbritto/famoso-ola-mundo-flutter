import 'package:flutter/material.dart';
import 'package:ola_mundo/app.controller.dart';
import 'package:ola_mundo/tinder_page.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String? title;

  const AppWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:
          AppController.instance, //está esctuando a minha instancia unica
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          // home: LoginPage(),
          initialRoute: '/tinder',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/tinder': (context) => TinderPage()
          },
        );
      },
    );
    // return MaterialApp(
    //   theme: ThemeData(primarySwatch: Colors.red),
    //   home: HomePage(),
    // );
    // return Container(
    //   child: Center(
    //     child: Text(
    //       title!,
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(color: Colors.black, fontSize: 50.0),
    //     ),
    //   ),
    // );
  }
}
