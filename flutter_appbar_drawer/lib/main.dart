import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,

        //leading은 appBar 좌측에 아이콘 놓고싶은 경우, Scaffold에 drawer를 달아주면, 알아서 leading자리에 메뉴 버튼이 생긴다!

        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () { 
        //     print('menu button is clicked');
        //    },
        //   ),

         // actions는 appBar 우측에 아이콘 놓고싶은 경우
          actions: [IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () { 
              print('shopping cart button is clicked');
            },
            ),
            //IconButton은 Icon과 onPressed 함수를 인자로 받는다.
            IconButton(
            icon: Icon(Icons.search),
            onPressed: () { 
              print('search button is clicked');
            },
            ),
          ]
        ),

        body: ListView(
          children: [ElevatedButton(
            //width: 100.0,
            // height: 50.0,

              child: Text("Snack Bar Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellowAccent,
                primary: Colors.red,
              ),

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Flutter 2.0 SnackBar!"),
                  backgroundColor: Colors.black,
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: (){},
                    )
                    )
                );
              }
          ),
          
          ElevatedButton(
            //width: 100.0,
            // height: 50.0,

              child: Text("Toast Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellowAccent,
                primary: Colors.red,
              ),

              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'Fllutter 토스트 메시지',
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.blueAccent,
                  fontSize: 20.0,
                  textColor: Colors.brown,
                  toastLength: Toast.LENGTH_LONG,
                );
              }
          ),
          ]
          
        ),

        drawer: Drawer(
          child: ListView( 
            //safeArea무시 
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/yang.jpg'),
                backgroundColor: Colors.blue,
              ), 
              //다른 계정 사진을 넣어주는 named property
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage:  AssetImage('assets/apple.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage:  AssetImage('assets/apple.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage:  AssetImage('assets/apple.png'),
                  backgroundColor: Colors.white,
                ),
                

              ],
              accountName: Text("JunSikYang"),
              accountEmail: Text("uigohiiming2@gmail.com"),
              // 이메일 옆 화살표 버튼 구현
              onDetailsPressed: (){
                print("arrow button clicked!!");
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                 
                )
              ),

              ),
              ListTile(
                leading: Icon(Icons.home,
                color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: (){
                  print('Home icon Clicked!!');
                },
                trailing: Icon(Icons.add,
                color: Colors.black),

              ),

              ListTile(
                leading: Icon(Icons.settings,
                color: Colors.grey[850],
                ),
                title: Text('Setting'),
                onTap: (){
                  print('Setting icon Clicked!!');
                },
                trailing: Icon(Icons.add,
                color: Colors.black),

              ),

              ListTile(
                leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: (){
                  print('Q&A icon Clicked!!');
                },
                trailing: Icon(Icons.add,
                color: Colors.black),

              )
            ]
          ),
        ),
    );
  }
}