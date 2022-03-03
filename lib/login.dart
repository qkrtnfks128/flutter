import 'package:flutter/material.dart';
import 'package:newflutter/my_button/my_login_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign in', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: _buildPadding());
  }

  Widget _buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyLoginButton(
            image: Image.asset('assets/images/google.png', width: 30),
            text: Text('Login with Google'),
            btnColor: Colors.white,
            onPressed: () {},
          ),
          MyLoginButton(
            image: Image.asset('assets/images/dog.jpg', width: 30),
            text: Text('Login with dog', style: TextStyle(color: Colors.red)),
            btnColor: Colors.white,
            onPressed: () {},
          ),
          MyLoginButton(
            image: Image.asset('assets/images/facebook.png', width: 30),
            text: Text('Login with Facebook',
                style: TextStyle(color: Color(0xffb3A589E))),
            btnColor: Colors.white,
            onPressed: () {},
          ),
          MyLoginButton(
            image: Image.asset('assets/images/mail.png', width: 30),
            text:
                Text('Login with Email', style: TextStyle(color: Colors.white)),
            btnColor: Color(0xffb499959),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
