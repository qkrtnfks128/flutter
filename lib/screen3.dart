import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('3nd page')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('세번째 페이지'),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor:Colors.pinkAccent
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              child: Text('메인페이지로 가자',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor:Colors.pinkAccent
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/b');
              },
              child: Text('2페이지로 가자',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
