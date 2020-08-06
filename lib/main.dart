import 'package:flutter/material.dart';

// MINHAS IMPORTAÇÕES DE PAGINA
import 'package:flutterfood/pages/auth/login.dart';
import 'package:flutterfood/pages/auth/register.dart';

void main() => runApp(FlutterFoodApp());

class FlutterFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFood',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(147, 70, 248, 1),
        backgroundColor: Colors.white,
        accentColor: Colors.black,
        brightness: Brightness.dark,
      ),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },
    );
  }
}
