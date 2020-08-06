import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: _LoginPageUI(context),
      ),
    );
  }

  Widget _LoginPageUI(context) {
    return Container(
      child: Column(
        children: <Widget>[
          _headingAuth(),
          _formLogin(context),
          _loginButton(),
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, 1),
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

  Widget _loginButton() {
    return Container();
  }
}
