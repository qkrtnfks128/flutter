import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'newList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const newList=NEW_LIST;

    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Icon(Icons.abc_sharp),
                          Icon(Icons.star)
                        ]

                      ),
                    )
                  ],
                )
            ),
            body: Container(
              child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: newList.length,
              itemBuilder: (BuildContext context, int index) {

                return Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white24,
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                          offset: Offset(-3, -3))
                    ],

                    color: Color(int.parse("0xff${newList[index]['color']}")),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  ),
                  // color:Color(0xffF5DD9A),

                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '${newList[index]['name']}',
                                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24)
                            ),
                            Text(
                                '${newList[index]['brand']}',
                                style: TextStyle(fontSize: 18,color: Colors.grey),
                            ),
                            Text('\$ ${newList[index]['price']}'),
                          ],
                        ),
                        Image.asset(
                            '../assets/images/${newList[index]['image']}'),
                      ]));
          },
        ),
            ),
           bottomNavigationBar: BottomAppBar(
            child: Container(
            height: 50,
            color: Colors.black,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.chevron_left, color: Colors.white),
              Icon(Icons.circle_rounded, color: Colors.white),
              Icon(Icons.account_circle, color: Colors.white),
            ],
          ),
        )),
      ),
    ));
  }
}
