import 'package:flutter/material.dart';

class MyLoginButton extends StatelessWidget {

  MyLoginButton(
      {Key? key,
      required this.image,
      required this.text,
      required this.btnColor,
      required this.onPressed})
      : super(key: key);

  final Widget image;
  final Widget text;
  final Color btnColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: btnColor,
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [image, SizedBox(width: 40), text],
              ),
            )));
  }
}
