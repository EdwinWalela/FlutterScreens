import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(margin: EdgeInsets.only(top: 10.0)),
              logo(),
              formHeader(),
              form(),
              Container(margin: EdgeInsets.only(top: 20.0)),
              socialHeader(),
              Container(margin: EdgeInsets.only(top: 20.0)),
              socialButtonRow(),
              Container(margin: EdgeInsets.only(top: 25.0)),
              socialFooter(),
              Container(margin: EdgeInsets.only(top: 25.0)),
            ],
          ),
        ],
      ),
    );
  }

  Widget logo() {
    return Center(
      child: SvgPicture.asset(
        'assets/mainlogo.svg',
        width: 250,
      ),
    );
  }

  Widget formHeader() {
    return Container(
      margin: EdgeInsets.only(left: 35.0),
      child: Text(
        'Create an Account',
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
          passwordConfirmInput(),
          Container(margin: EdgeInsets.only(top: 30.0)),
          signUpButton(),
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
        fontSize: 18.0,
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
        fontSize: 19.0,
      ),
    );
  }

  Widget passwordConfirmInput() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
      ),
      style: TextStyle(
        fontSize: 19.0,
      ),
    );
  }

  Widget signUpButton() {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget socialHeader() {
    return Center(
      child: Text(
        '- Or sign up with -',
        style: TextStyle(
          fontSize: 14.0,
          letterSpacing: 0.8,
        ),
      ),
    );
  }

  Widget socialButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(margin: EdgeInsets.only(right: 10)),
        googleSocial(),
        Container(margin: EdgeInsets.only(right: 10)),
        facebookSocial(),
        Container(margin: EdgeInsets.only(right: 10)),
        twitterSocial(),
        Container(margin: EdgeInsets.only(right: 10)),
      ],
    );
  }

  Widget googleSocial() {
    return Container(
      padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: Image.asset(
        './assets/google.png',
        fit: BoxFit.fill,
        width: 25,
      ),
    );
  }

  Widget facebookSocial() {
    return Container(
      padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: Image.asset(
        './assets/fb.png',
        fit: BoxFit.fill,
        width: 15,
      ),
    );
  }

  Widget twitterSocial() {
    return Container(
      padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: Image.asset(
        './assets/twitter.png',
        fit: BoxFit.fill,
        width: 35,
      ),
    );
  }

  Widget socialFooter() {
    return Center(
      child: Text(
        "Alreagy have an account? Sign in",
        style: TextStyle(
          fontSize: 14.0,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}
