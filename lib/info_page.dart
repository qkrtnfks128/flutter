import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Info {
  final int? id;
  final String? userName;
  final int? account;
  final int? balance;

   Info(
      {required this.id,
        required this.userName,
        required this.account,
        required this.balance});

   Info.fromJson(Map<String,dynamic> json) :

      id= json["id"],
      userName=  json["userName"],
      account= json["account"],
      balance= json["balance"];

  static Map<String, dynamic> toJson(Info value) =>
     {'id': value.id, 'userName': value.userName, 'account':value.account, 'banlance':value.balance};
}




class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  Future<Info>? info;


  @override
  void initState() {
    super.initState();
    info : fetchInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('info', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Center(
          child: FutureBuilder<Info>(//통신데이터 가져오기
            future: info,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              print(snapshot.hasData);
              if (snapshot.hasData) {
                print('데이타는 있어!');
                return buildColumn(snapshot.data!);
              }
              else if (snapshot.hasError) {
                return Text("${snapshot.error}에러!!");
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }

  Widget buildColumn(AsyncSnapshot snapshot) {
    print(snapshot);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('고객번호:' + snapshot.data!.id.toString(),
              style: TextStyle(fontSize: 20)),
          Text('고객명:' + snapshot.data!.userName.toString(),
              style: TextStyle(fontSize: 20)),
          Text('계좌 아이디:' + snapshot.data!.account.toString(),
              style: TextStyle(fontSize: 20)),
          Text('잔액:' + snapshot.data!.balance.toString() + '원',
              style: TextStyle(fontSize: 20)),
        ],
      );
  }
}

Future<Info> fetchInfo() async {
  var url = 'https://api.mockaroo.com/api/5ee43e50?count=100&key=6213f2b0';
  final response = await http.get(Uri.parse(
      url));

  if (response.statusCode == 200) {
    //만약 서버가 ok응답을 반환하면, json을 파싱합니다
    print('응답했다');
    print(json.decode(response.body));
    print(response.statusCode);
    return Info.fromJson(json.decode(response.body));
  } else {
    //만약 응답이 ok가 아니면 에러를 던집니다.
    throw Exception('계좌정보를 불러오는데 실패했습니다');
  }
}