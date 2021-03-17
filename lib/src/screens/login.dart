import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 50.0)),
          logo(),
          formHeader(),
          Expanded(
            child: form(),
          ),
        ],
      ),
    );
  }

  Widget logo() {
    return SvgPicture.asset(
      'assets/mainlogo.svg',
      alignment: Alignment.center,
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0),
      child: Column(
        children: [
          emailInput(),
          Container(margin: EdgeInsets.only(top: 30.0)),
          passwordInput(),
          Container(margin: EdgeInsets.only(top: 30.0)),
          signInButton(),
        ],
      ),
    );
  }

  Widget formHeader() {
    return Text(
      'Login to your Account',
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
        color: Colors.blueGrey,
      ),
    );
  }

  Widget emailInput() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email',
      ),
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }

  Widget passwordInput() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ),
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }

  Widget signInButton() {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
