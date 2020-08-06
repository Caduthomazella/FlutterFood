import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
          _headingAuth(),
          Container(height: 20),
          _formLogin(context),
          Container(height: 10),
          _loginButton(context),
          Container(height: 30),
          _textRegister(context),
        ],
      ),
    );
  }

  Widget _headingAuth() {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/IconeFlutterFood.png')),
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
          _inputEmail(context),
          _inputPassword(context),
        ],
      ),
    );
  }

  Widget _inputEmail(context) {
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
          hintText: 'Password',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }

  Widget _loginButton(context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {
          print('Login');
        },
        color: Theme.of(context).primaryColor,
        child: Text('Login'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget _textRegister(context) {
    return GestureDetector(
      onTap: () => print('voce foi  pra outra pagina'),
      child: Text(
        'Cadastrar-se',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18.2,
        ),
      ),
    );
  }
}
