import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //앱화면의 빈 도화지 위젯
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text('Login', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.redAccent[700],
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            //Column 요소가 화면을 넘칠때 스크롤이 되도록함,키보드가 영역을 침범할때 스크롤이 될수 있도록함
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Center(
                  child: Image(
                    image: AssetImage('assets/images/dog.jpg'),
                    width: 170,
                    height: 100,
                  ),
                ),
                Form(
                    key: _formKey,
                    child: Theme(
                      //테마
                      data: ThemeData(
                          primaryColor: Colors.red,
                          inputDecorationTheme: InputDecorationTheme(
                            labelStyle:
                                TextStyle(color: Colors.redAccent, fontSize: 15),
                          )),
                      child: Container(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          children: [
                            TextField(
                              controller: controller,
                              decoration:
                                  InputDecoration(labelText: 'Enter  "dice"'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
                              decoration:
                                  InputDecoration(labelText: 'Enter  "Password"'),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ButtonTheme(
                              minWidth: 100,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.redAccent,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: () {
                                  if (controller.text == 'dice' &&
                                      controller2.text == '1234') {

                                    Navigator.pushNamed(context, '/dice');

                                  }
                                  else{
                                    if(controller.text != 'dice' &&
                                        controller2.text != '1234'){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content:Text('뭐하나 제대로 쓴게없냐!'),
                                            duration :Duration(milliseconds: 700),
                                          )
                                      );
                                    }
                                    else if(controller.text != 'dice'){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content:Text('dice라고 써!'),
                                            duration :Duration(milliseconds: 700),
                                          )
                                      );
                                    }
                                    else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content:Text('비밀번호 제대로 써!'),
                                            duration :Duration(milliseconds: 700),
                                          )
                                      );
                                    }


                                  }
                                },
                                child: Icon(
                                  Icons.arrow_forward,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
