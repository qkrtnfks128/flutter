import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          title: Text('Mangki app'),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          elevation: 0.0, //높이,앱바가 떠있는 효과를 없앰
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping_cart button is clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button is clicked');
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dog.jpg'),
              ),
              accountName: Text('Mangki'),
              accountEmail: Text('sksksk123@naver.com'),
              onDetailsPressed: () {
                // arrow버튼이 생긴다. 버튼 눌렀을때 메서드
              },
              decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/cola.png'),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print('home click');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: () {
                print('Setting click');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A click');
              },
              trailing: Icon(Icons.add),
            )
          ]),
        ),
        body: SingleChildScrollView(
          //column 요소가 화면을 넘칠때 스크롤이 되도록함
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dog.jpg'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                    child: Row(
                      children: [
                        MySnackBar(//따로뺀 버튼,스낵바 만들기
                        ),
                        SizedBox(width: 10,),
                        MyToast(),//토스트버튼
                        SizedBox(width: 10,),
                        MyRoute(),//라우트버튼
                      ],
                    ),
                  ),
                ),

                Divider(
                  height: 60,
                  color: Colors.grey[800],
                  thickness: 0.5,
                  indent: 30,
                  endIndent: 30,

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right:30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/burger.png'),
                    radius: 40,
                    backgroundColor: Colors.amber[800],
                  ),
                )
              ],
            ),
        ));
  }
}


//따로 뺀 버튼
class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(

        child: Text('Show me'),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:Text('안녕안녕 나는 스낵바',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              )
          );
        },
      ) ,
    );
  }
}
//토스트 버튼
class MyToast extends StatelessWidget{
  const MyToast({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Center(
      child: TextButton(
        onPressed: (){
          //토스트위젯은 위젯트리와는 상관이 없다.함수만 넣어주면 된다
          showToast();
        },
        child: Text('토스트버튼',
        style: TextStyle(
          color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(//버튼 스타일
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
//토스트 함수는 리턴값이 없으므로 void
void showToast(){
  Fluttertoast.showToast(
    msg: '이거슨 토스트다!!',
    gravity: ToastGravity.BOTTOM,//어디에 뜰 것인지 설정.
    backgroundColor:Colors.redAccent,
    fontSize: 20,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,//토스트가 뜨는 시간
  );
}
//라우트버튼
class MyRoute extends StatelessWidget{
  const MyRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Center(
      child: TextButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(
              builder:(context) => SecondPage()
            )
          );
        },
        child: Text('라우트버튼',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(//버튼 스타일
          backgroundColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}
//SecondPage
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SecondPage'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('MyHomePage 가즈아',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(//버튼 스타일
            backgroundColor: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}
