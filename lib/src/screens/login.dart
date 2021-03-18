import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent keyboard overflow
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(top: 30.0)),
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
    return Center(
      child: SvgPicture.asset(
        'assets/mainlogo.svg',
        width: 300,
      ),
    );
  }

  Widget formHeader() {
    return Container(
      margin: EdgeInsets.only(left: 35.0),
      child: Text(
        'Login to your Account',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.fromLTRB(35.0, 20.0, 35.0, 0),
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

  Widget emailInput() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
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
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
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
