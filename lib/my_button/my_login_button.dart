import 'package:flutter/material.dart';

class MyLoginButton extends StatelessWidget {
  MyLoginButton(
      {Key? key,
      required this.image,
      required this.text,
      required this.textColor,
      required this.btnColor,
      required this.onPressed})
      : super(key: key);

  final String image;
  final String text;
  final String textColor;
  final String btnColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(int.parse("0xff$btnColor")),
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Image.asset('assets/images/$image', width: 30),
                  SizedBox(width: 40),
                  Text('$text',
                      style:
                          TextStyle(color: Color(int.parse("0xff$textColor")))),
                ],
              ),
            )
        )
    );
  }
}
