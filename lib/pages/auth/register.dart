import 'package:flutter/material.dart';

// MINHAS PAGINAS IMPORTADAS
import 'package:flutterfood/pages/auth/login.dart';
import 'package:flutterfood/pages/auth/widgets/logo.dart';

class Register extends StatelessWidget {
  double _deviceWidth;
  double _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: _LoginPageUI(context),
      ),
    );
  }

  Widget _LoginPageUI(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
      child: Column(
        children: <Widget>[
          Container(height: 50),
          Logo(),
          Container(height: 20),
          _formLogin(context),
          Container(height: 10),
          _loginButton(context),
          Container(height: 30),
          _textToLogin(context),
        ],
      ),
    );
  }

  Widget _formLogin(context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, 0.7),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          _inputName(context),
          _inputEmail(context),
          _inputPassword(context),
        ],
      ),
    );
  }

  Widget _inputName(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      cursorColor: Theme.of(context).primaryColor,
      style: TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: 'Nome',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }

  Widget _inputEmail(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: false,
      cursorColor: Theme.of(context).primaryColor,
      style: TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: 'Email',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }

  Widget _inputPassword(context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      obscureText: true,
      cursorColor: Theme.of(context).primaryColor,
      style: TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: 'Senha',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }

  Widget _loginButton(context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {
          print('Registrando');
        },
        color: Theme.of(context).primaryColor,
        child: Text('Cadastrar'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget _textToLogin(context) {
    return GestureDetector(
      onTap: () {
        print('Redirecionado Pagina LOGIN');
        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login()));
        Navigator.pushReplacementNamed(context, '/login');
      },
      child: Text(
        'Já possui um Login?',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18.2,
        ),
      ),
    );
  }
}
