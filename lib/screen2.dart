import 'package:flutter/material.dart';



class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();//state생성
}

class _Screen2State extends State<Screen2> {
  int counter = 0;
  void _incrementCounter(){
    //화면을 다시 그리도록 하는 함수, stateful widget만 가능
    setState((){
      counter++;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('2nd page')
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor:Colors.pinkAccent
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/c');
                },
                child: Text('3페이지로',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor:Colors.pinkAccent
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Text('메인페이지로',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor:Colors.blueAccent
                ),
                onPressed:_incrementCounter,
                child: Text('+1',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              '$counter'
            )
          )
        ],
      ),
    );
  }
}
