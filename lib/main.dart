import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//앱의 시작점,MyApp이름은 바꿔도 된다
//MyApp 위젯을 만들어야 한다. 뼈대가 되는 구조이므로 변화가 없는 정적인 위젯,  stateless-widget
//stl까지만쓰면 자동완성기능 나옴
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //실질적으로 감싸는 위젯.반드시 argument를 가져야함
      debugShowCheckedModeBanner: false, //디버그 빨간띠 없애기
      title: 'first app', //앱을 총칭하는 이름
      theme: ThemeData(primarySwatch: Colors.blue //특정색의 음영을 사용
          ),
      home: MyHomePage(), //가장먼저 화면에 보이는 경로,커스텀위젯이므로 만들어야한다
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //앱화면의 빈 도화지 위젯
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('My app'),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          elevation: 0.0, //높이,앱바가 떠있는 효과를 없앰
        ),
        body: SingleChildScrollView(
          //column 요소가 화면을 넘칠때 스크롤이 되도록함
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/dog.jpg'),
                      radius: 60,
                    ),
                  ),
                  Divider(
                    height: 60,
                    color: Colors.grey[800],
                    thickness: 0.5,
                    // endIndent: 30,
                  ),
                  Text('name',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('MangKi',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('power-level',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('10',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10),
                    Text('using lightsaber',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                        ))
                  ]),
                  Row(children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10),
                    Text('face hero tatto',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                        ))
                  ]),
                  Row(children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10),
                    Text('fire flames',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                        ))
                  ]),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/burger.png'),
                      radius: 40,
                      backgroundColor: Colors.amber[800],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
