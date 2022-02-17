import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
           title:Text('앱헤더')
        ),
        body:Text('안녕'),
        bottomNavigationBar: BottomAppBar(
            child:SizedBox(
                height: 50,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.call),
                    Icon(Icons.person),
                    Icon(Icons.star)
                  ],
                )
            )
        ),
      )
    );
  }
}
