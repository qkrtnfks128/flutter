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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount:buttonList.length ,
          shrinkWrap: true,
          itemBuilder:(BuildContext context, int index){
            return  MyLoginButton(
              image:'${buttonList[index]['image']}',
              text:'${buttonList[index]['text']}',
              btnColor:'${buttonList[index]['btnColor']}',
              onPressed: () {
                Navigator.pushNamed(context, '/info'
                );
              },
              textColor: '${buttonList[index]['textColor']}',
            );
          } ,
        ),
      ],
    );
  }
}
const buttonList = [
  {
    "image":"facebook.png",
    "text":"Login with Facebook",
    "textColor":"b3A589E",
    "btnColor":"ffffff",
  },
  {
    "image":"dog.jpg",
    "text":"Login with Dog",
    "textColor":"AF496F",
    "btnColor":"ffffff",
  },
  {
    "image":"google.png",
    "text":"Login with Google",
    "textColor":"000000",
    "btnColor":"ffffff",
  },
  {
    "image":"mail.png",
    "text":"Login with Mail",
    "textColor":"ffffff",
    "btnColor":"489959",
  },
];
