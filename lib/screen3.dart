import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  int leftDice = 1;
  int rightDice = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      appBar: AppBar(
        title:Text('Dice game')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('주사위게임~🤩'),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(//위젯을 상위위젯의 사이즈를 다 채움(Row는 가로),기본 flex1
                      child: Image.asset('assets/images/dice$leftDice.png')
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Image.asset('assets/images/dice$rightDice.png')
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    leftDice = Random().nextInt(6)+1;//0부터 6개 가져오므로 +1
                    rightDice = Random().nextInt(6)+1;
                    showToast('왼쪽:$leftDice, 오른쪽:$rightDice');
                  });
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )
            )
          ],
        ),
      ),
    );
  }
}

void showToast(String message){
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
    textColor: Colors.amber[800],
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP
  );
}