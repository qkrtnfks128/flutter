import 'package:flutter/material.dart';
import 'package:newflutter/screen1.dart';
import 'package:newflutter/screen2.dart';
import 'package:newflutter/screen3.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 빨간띠 없애기
      title: 'first app', //앱을 총칭하는 이름
      theme: ThemeData(primarySwatch: Colors.amber //특정색의 음영을 사용
          ),
      initialRoute:'/',
      routes: {
        '/':(context) => Screen1(),
        '/b':(context) => Screen2(),
        '/c':(context) => Screen3(),
      },
    );
  }
}
