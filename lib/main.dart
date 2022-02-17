import 'package:flutter/cupertino.dart';
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
        body:Align(
          alignment: Alignment.topCenter,
          child: Container(
            width:100,height:100,
            padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
            margin:EdgeInsets.all(20),
            decoration: BoxDecoration(
              border:Border.all(color:Colors.black),
              color:Colors.red,
              boxShadow:[
                BoxShadow(
                  color:Colors.green,
                  blurRadius:5.0,
                  spreadRadius:3.0,
                  offset:Offset(
                    3,3,
                  )
                )
              ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.red,
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                    ],
                    stops: [0.1, 0.4, 0.6, 0.9]
                ),
                // shape: BoxShape.circle

                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10)
                ),
                backgroundBlendMode: BlendMode.exclusion

            ),

            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('무야호'),
                Icon(Icons.star,size:30)
              ],
            ),

          ),
        ),

      )
    );
  }
}
